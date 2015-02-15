#!/usr/bin/perl

use warnings;
use strict;
use Data::Dumper;
use FindBin '$RealBin';
use Cwd 'abs_path';

##
# input files:
# cmds/ =>  cmds_example.md
# cmd.list => cmds_overview.md
# cmd.list => cmds_manpage/*.man => cmds_manpage/*.md
##


# generate cmds_example.md by cmds/
my $cmds_md = "$RealBin/cmds_example.md";
$cmds_md = abs_path $cmds_md;
my $src = "$RealBin/cmds";

open(FH, ">", "$cmds_md") or die "failed to opened $cmds_md\n";
print FH "#Commands Examples  \n";
my @cmds = `ls $src`;
for my $cmd (@cmds){
  my $cat_cmd = "/bin/cat $src/$cmd";
  #print "$cat_cmd\n";
  my $cmd_detail = `$cat_cmd`; $cmd_detail =~ s/&#39;/'/g; $cmd_detail =~ s/&quot;/\"/g;
  print FH "###$cmd";
  print FH "```\n";
  print FH "$cmd_detail\n";
  print FH "```\n\n";
}
close FH;
print "updated $cmds_md\n";



#generate find.md, grep.md, awek.md, sed.md, xargs.md
#don't need , will update md files directly
#`../../tools/txt_to_md_code.pl find`;
#`../../tools/txt_to_md_code.pl grep`;
#`../../tools/txt_to_md_code.pl awk`;
#`../../tools/txt_to_md_code.pl sed`;
#`../../tools/txt_to_md_code.pl xargs`;


#generate cmds_overview.md  and all command man pages by cmd.list
my @lines = `/bin/cat $RealBin/cmd.list`;
my $cmds_manpage = "$RealBin/cmds_manpage";
my $i = 0;
my $cmds_overview = "$RealBin/cmds_overview.md";

open(FH, ">","$cmds_overview") or die "failed to open $cmds_overview\n";
print FH "template: base_without_toc.html  \n\n";

while($i < scalar(@lines)){
  my $cmd = $lines[$i];
  chomp($cmd);
  $cmd =~ /(.*?)\s:\s(.*)/;
  my $cmd_name = $1;
  my $des = $2;
  #$ENV{'MANWIDTH'} = 10000;
  `export MANWIDTH=10000; man $cmd_name > $cmds_manpage/${cmd_name}.man`;
  if($cmd_name && -s "$cmds_manpage/${cmd_name}.man"){
    $cmd_name = "[$cmd_name](cmds_manpage\/$cmd_name\.md)";
  }
  #print "$cmd_name : $des\n";
  print FH "| $cmd_name | $des |\n";
  print FH "|:-------------|:-----------------------------------------------------------|\n" if $i == 0;
  $i = $i + 1 ;
}
print "updated $RealBin/cmds_overview.md\n";



# convert man to md for commands
print "generate all man page md for commands\n";
system("cd $RealBin && ./to_md.sh");
