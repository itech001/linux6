#!/usr/bin/perl

use warnings;
use strict;
use FindBin '$RealBin';

my $file = $ARGV[0];
if( ! -e $file){
  print "$file is not existed\n";
  exit 1;
}

my $file_md = "$file".".md";
print "$file => $file_md\n";
my $title = `head -1 $file`;
`echo "#$title" > tmp_title`;
`cat $RealBin/base_without_toc.txt tmp_title $RealBin/md_code.txt $file $RealBin/md_code.txt > $file_md`;

exit 0;
