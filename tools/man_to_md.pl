#!/usr/bin/perl

use warnings;
use strict;
use File::Basename;

# to disable manpage width limit
$ENV{'MAN_KEEP_FORMATTING'} = '';
$ENV{'MANWIDTH'} = 10000;
#`export MANWIDTH=10000; man $cmd_name > $cmds_manpage/${cmd_name}.md`;

my $file = $ARGV[0];
if( ! -e $file){
  print "$file is not existed\n";
  exit 1;
}
my $title = basename($file); $title =~ s/\..*$//g;
my $file_md = $file;
$file_md =~ s/man$/md/;
print "$file => $file_md\n";

open(FH, "$file") or die "failed to open $file\n";
open(FH2, ">", "$file_md") or die "failed to open $file_md\n";
my @lines = <FH>;
if(scalar(@lines) == 0){
 print "$file is empty\n";
 exit 1;
}

shift @lines;
pop @lines;

my $md = '';
my $code_start = 0;
my $cstr = "```\n";
for my $l (@lines){
 chomp($l);
 #next if $l =~ /^\s*$/;
 if($l =~ /^([^\s][A-Z ]+)$/){
   if($code_start){
      $md = $md . $cstr . "###" . lc($1) . "\n" . $cstr;
   }else{
      $md = $md . "###" . lc($1) . "\n" . $cstr;
   }
   $code_start = 1;
 }else{
  my $c = $l; $l =~  s/^\s+//;
  $md = $md . "$c\n";
 }
}
$md = $md . $cstr;

#print $md;
#print FH2 "template: base_without_toc.html\n";
print FH2 "#$title  \n";
print FH2 $md;

close(FH);
close(FH2);
