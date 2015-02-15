# coding: utf-8
from __future__ import print_function

from jinja2.exceptions import TemplateNotFound
from mkdocs import nav, search, toc, utils
from mkdocs.compat import urljoin, PY2
from mkdocs.relative_path_ext import RelativePathExtension
import jinja2
import json
import markdown
import os

import commands

def ListFilesByTxt(dir,wildcard):
    cmd = "/usr/bin/find " + dir + " -follow -name \"" + "*" + wildcard + "\" "
    outp = commands.getoutput(cmd)
    return outp.split('\n')


def convert_markdown(markdown_source, site_navigation=None, extensions=(), strict=False):
    """
    Convert the Markdown source file to HTML content, and additionally
    return the parsed table of contents, and a dictionary of any metadata
    that was specified in the Markdown file.

    `extensions` is an optional sequence of Python Markdown extensions to add
    to the default set.
    """

    # Prepend a table of contents marker for the TOC extension
    markdown_source = toc.pre_process(markdown_source)

    # Generate the HTML from the markdown source
    builtin_extensions = ['meta', 'toc', 'tables', 'fenced_code']
    mkdocs_extensions = [RelativePathExtension(site_navigation, strict), ]
    extensions = builtin_extensions + mkdocs_extensions + list(extensions)
    md = markdown.Markdown(
        extensions=extensions
    )
    html_content = md.convert(markdown_source)
    meta = md.Meta

    # Strip out the generated table of contents
    (html_content, toc_html) = toc.post_process(html_content)

    # Post process the generated table of contents into a data structure
    table_of_contents = toc.TableOfContents(toc_html)

    return (html_content, table_of_contents, meta)


def get_global_context(nav, config):
    """
    Given the SiteNavigation and config, generate the context which is relevant
    to app pages.
    """

    site_name = config['site_name']

    if config['site_favicon']:
        site_favicon = nav.url_context.make_relative('/' + config['site_favicon'])
    else:
        site_favicon = None

    page_description = config['site_description']

    extra_javascript = utils.create_media_urls(nav=nav, url_list=config['extra_javascript'])

    extra_css = utils.create_media_urls(nav=nav, url_list=config['extra_css'])

    return {
        'site_name': site_name,
        'site_author': config['site_author'],
        'favicon': site_favicon,
        'page_description': page_description,

        # Note that there's intentionally repetition here. Rather than simply
        # provide the config dictionary we instead pass everything explicitly.
        #
        # This helps ensure that we can throughly document the context that
        # gets passed to themes.
        'repo_url': config['repo_url'],
        'repo_name': config['repo_name'],
        'nav': nav,
        'base_url': nav.url_context.make_relative('/'),
        'homepage_url': nav.homepage.url,

        'extra_css': extra_css,
        'extra_javascript': extra_javascript,

        'include_nav': config['include_nav'],
        'include_next_prev': config['include_next_prev'],

        'copyright': config['copyright'],
        'google_analytics': config['google_analytics']
    }


def get_page_context(page, content, nav, toc, meta, config):
    """
    Generate the page context by extending the global context and adding page
    specific variables.
    """

    if page.is_homepage or page.title is None:
        page_title = config['site_name']
    else:
        page_title = page.title + ' - ' + config['site_name']

    if page.is_homepage:
        page_description = config['site_description']
    else:
        page_description = None

    if config['site_url']:
        base = config['site_url']
        if not base.endswith('/'):
            base += '/'
        canonical_url = urljoin(base, page.abs_url.lstrip('/'))
    else:
        canonical_url = None

    return {
        'page_title': page_title,
        'page_description': page_description,

        'content': content,
        'toc': toc,
        'meta': meta,


        'canonical_url': canonical_url,

        'current_page': page,
        'previous_page': page.previous_page,
        'next_page': page.next_page,
        'include_nav': config['include_nav'],
        'include_next_prev': config['include_next_prev'],
    }


def build_template(template_name, env, config, site_navigation=None, extra_context=None):

    try:
        template = env.get_template(template_name)
    except TemplateNotFound:
        return False

    if site_navigation is not None:
        context = get_global_context(site_navigation, config)
    else:
        context = {}

    if extra_context is not None:
        context.update(extra_context)

    output_content = template.render(context)
    output_path = os.path.join(config['site_dir'], template_name)
    utils.write_file(output_content.encode('utf-8'), output_path)
    return True


def build_pages(config, dump_json=False):
    """
    Builds all the pages and writes them into the build directory.
    """
    site_navigation = nav.SiteNavigation(config['pages'], config['use_directory_urls'])
    loader = jinja2.FileSystemLoader(config['theme_dir'])
    env = jinja2.Environment(loader=loader)
    search_index = search.SearchIndex()

    build_template('404.html', env, config, site_navigation)
    build_template('search.html', env, config, site_navigation)

    nav_pages = []
    for page in site_navigation.walk_pages():
        nav_pages.append(page.input_path)
        # Read the input file
        input_path = os.path.join(config['docs_dir'], page.input_path)
        input_content = open(input_path, 'r').read()
        if PY2:
            input_content = input_content.decode('utf-8')

        # Process the markdown text
        html_content, table_of_contents, meta = convert_markdown(
            input_content, site_navigation,
            extensions=config['markdown_extensions'], strict=config['strict']
        )

        context = get_global_context(site_navigation, config)
        context.update(get_page_context(
            page, html_content, site_navigation,
            table_of_contents, meta, config
        ))

        # Allow 'template:' override in md source files.
        if 'template' in meta:
            template = env.get_template(meta['template'][0])
        else:
            template = env.get_template('base.html')

        if not utils.is_markdown_file(page.input_path):
            template = env.get_template('base_without_toc.html')

        # Render the template.
        output_content = template.render(context)

        # Write the output file.
        output_path = os.path.join(config['site_dir'], page.output_path)
        if dump_json:
            json_context = {
                'content': context['content'],
                'title': context['current_page'].title,
                'url': context['current_page'].abs_url,
                'language': 'en',
            }
            utils.write_file(json.dumps(json_context, indent=4).encode('utf-8'), output_path.replace('.html', '.json'))
        else:
            utils.write_file(output_content.encode('utf-8'), output_path)

        search_index.add_entry_from_context(page, html_content, table_of_contents)

    # generate html for other md files
    files = ListFilesByTxt(os.path.join(config['docs_dir']),'.md')
    for mdf in files:
        title = os.path.basename(mdf)
        title = os.path.splitext(title)[0]
        path = os.path.relpath(mdf,config['docs_dir'])
        url = utils.get_url_path(path,config['use_directory_urls'])
        output_path = utils.get_html_path(path)
        if(path in nav_pages):continue
        input_content = open(mdf, 'r').read()
        if PY2:
            input_content = input_content.decode('utf-8')

        site_navigation.url_context.set_current_url(url)
        # Process the markdown text
        html_content, table_of_contents, meta = convert_markdown(
            input_content, site_navigation,
            extensions=config['markdown_extensions']
        )

        context = get_global_context(site_navigation, config)
        page = nav.Page(title=title, url=url,path=path,url_context=site_navigation.url_context)
        context.update(get_page_context(
                    page, html_content, site_navigation,
                    table_of_contents, meta, config
        ))

        if 'template' in meta:
            template = env.get_template(meta['template'][0])
        else:
            template = env.get_template('base.html')

        if not utils.is_markdown_file(mdf):
            template = env.get_template('base_without_toc.html')

        # Render the template.
        output_content = template.render(context)

        # Write the output file.
        output_path = os.path.join(config['site_dir'], output_path)
        utils.write_file(output_content.encode('utf-8'), output_path)
        #search_index.add_entry_from_context(page, html_content, table_of_contents)

    build_template('js/tipuesearch/tipuesearch_content.js', env, config, extra_context={
        'search_index': search_index.generate_search_index()
    })


def build(config, live_server=False, dump_json=False, clean_site_dir=False):
    """
    Perform a full site build.
    """
    if clean_site_dir:
        print("Cleaning site directory")
        utils.clean_directory(config['site_dir'])
    if not live_server:
        print("Building documentation to directory: %s" % config['site_dir'])
        if not clean_site_dir and site_directory_contains_stale_files(config['site_dir']):
            print("Directory %s contains stale files. Use --clean to remove them." % config['site_dir'])

    if dump_json:
        build_pages(config, dump_json=True)
    else:
        # Reversed as we want to take the media files from the builtin theme
        # and then from the custom theme_dir so the custom versions take take
        # precedence.
        for theme_dir in reversed(config['theme_dir']):
            utils.copy_media_files(theme_dir, config['site_dir'])
        utils.copy_media_files(config['docs_dir'], config['site_dir'])
        build_pages(config)


def site_directory_contains_stale_files(site_directory):
    """
    Check if the site directory contains stale files from a previous build.
    Right now the check returns true if the directory is not empty.
    A more sophisticated approach should be found to trigger only if there are
    files that won't be overwritten anyway.
    """
    if os.path.exists(site_directory):
        if os.listdir(site_directory):
            return True
    return False
