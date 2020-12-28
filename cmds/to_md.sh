#!/bin/sh
find cmds_manpage/ -name "*.man" | xargs -I '{}' ../../tools/man_to_md.pl '{}'
