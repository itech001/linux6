
convert html to markdown:
http://www.aaronsw.com/2002/html2text/
cat my.html | python html2text.py # outputs markdown

# still doesn't support html table
pandoc -f html -t markdown_github shell_compare.html.test   >& test.md

convert markdown to html:
Markdown_1.0.1/Markdown.pl
