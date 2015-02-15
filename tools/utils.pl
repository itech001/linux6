#!/usr/bin/perl


#https://github.com/itech001/awesome-linux-resources/blob/master/README.md
#https://raw.githubusercontent.com/itech001/awesome-linux-resources/master/README.md

# get github raw markdown files
sub get_awesome_readme{
  my $git = shift;
  $git =~ /https:\/\/github\.com\/.*?\/(.*?)\/.*/;
  my $name = $1;
  my $raw = $git;
  $raw =~ s/github\.com/raw\.githubusercontent\.com/;
  $raw =~ s/blob\///g;
  my $raw_new = $raw;
  print "$name:$raw_new\n";
  my $cmd = "rm -rf $name ; mkdir $name ; cd $name ; wget $raw_new";
  print "$cmd\n";
  my $r = system($cmd);
}

#get_awesome_readme("https://github.com/kahun/awesome-sysadmin/blob/master/README.md");

1;

use FindBin qw($Bin);
use lib "$Bin/";
use LWP::Simple;

sub get_html_element{
  my ($url,$id,$save_to) = @_;
   my $dom = HTML::Grabber->new( html => get($url) );

   $dom->find($id)->each(sub {
        my $html = $_->text;
        print "$html\n";
    });
}

1;
