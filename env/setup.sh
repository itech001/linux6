#!/bin/bash -x

# this file is to setup env, need be used by '. setup.sh'

# to install all dependences for mkdocs
#sudo apt-get install python-pip
#sudo pip install mkdocs
#sudo pip uninstall mkdocs

# set my mkdocs into PYTHONPATH
cur_dir=$(cd `dirname $0`; pwd);
echo $cur_dir;
export PYTHONPATH=$cur_dir/../mkdocs-master
echo PYTHONPATH is $PYTHONPATH

#set my mkdocs to alias 
alias mkdocs=$cur_dir/../mkdocs-master/mkdocs/main.py
echo mkdocs is alias  

# cd to working dir
cd $cur_dir/../src

