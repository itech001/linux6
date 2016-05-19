#!/usr/bin/perl


#bash
`export MANWIDTH=10000; man bash > bash_man.man`;
`../../tools/man_to_md.pl bash_man.man`;
`echo  "\#bash  " > tmp_man`;
`echo "[bash manpage](bash_man.md)  " >> tmp_man`;
`echo "more examples: [100 shell script examples](https://github.com/itech001/100-shell-script-examples) /  [bash example](https://github.com/itech001/bash-example)" >> tmp_man`;
`cat meta tmp_man tmp_md_code bash.sh tmp_md_code > bash.md`;

#csh
`export MANWIDTH=10000; man csh > csh_man.man`;
`../../tools/man_to_md.pl csh_man.man`;
`echo "\#csh   "   > tmp_man`;
`echo "[csh manpage](csh_man.md)  " >> tmp_man`;
`cat meta tmp_man tmp_md_code csh.csh tmp_md_code > csh.md`;

#zsh
`export MANWIDTH=10000; man zsh > zsh_man.man`;
`../../tools/man_to_md.pl zsh_man.man`;
`echo "\#zsh  "  > tmp_man`;
`echo "[zsh manpage](zsh_man.md)  ">> tmp_man`;
`cat meta tmp_man tmp_md_code zsh.zsh tmp_md_code  > zsh.md`;

#perl
`export MANWIDTH=1000; man perl > perl_man.man`;
`../../tools/man_to_md.pl perl_man.man`;
`echo "\#perl  "  > tmp_man`;
`echo "[perl manpage](perl_man.md)  " >> tmp_man`;
`cat meta tmp_man tmp_md_code perl.pl tmp_md_code > perl.md`;

#python
`export MANWIDTH=1000; man python > python_man.man`;
`../../tools/man_to_md.pl python_man.man`;
`echo "\#python  "    > tmp_man`;
`echo "[python manpage](python_man.md)  ">> tmp_man`;
`cat meta tmp_man tmp_md_code python.py tmp_md_code > python.md`;
