#!/usr/bin/perl
'rm git';
`wget http://cheat.errtheblog.com/s/git`;
`cat git | ../../tools/html2text.py > git-cheat-sheet.md`;
