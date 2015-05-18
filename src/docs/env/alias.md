template: base_without_toc.html  

#Useful Bash Alias  

more alias :  
http://xmodulo.com/useful-bash-aliases-functions.html  

```
#normalize the backspace key
stty erase "^H"
stty werase "^?"
stty sane

export PS1="[\[\e[32m\]\u\[\e[36m\]@\h \[\e[35m\]\w\[\e [\]\\[\e[m\]]\$ "
export LS_COLORS="di=32:ln=33:ex=35:*.c=36:*.h=31:*.C=36"
export EDITOR="vim -u ~myhome/.vimrc"
alias tmux='~myhome/bin/tmux/tmux -u'
alias tmux-a='~myhome/bin/tmux/tmux -u attach-session -t'

export P4CONFIG=.p4config

export perldir=/depot/perl-5.8.3/bin
#alias perl='$perldir/perl'
#alias cpan='$perllib/cpan'
#alias cpan='perl -MCPAN -e shell'
export PERL5LIB=~/perl/lib/site_perl/5.8.3
export PATH=${perldir}:${PATH}

export mybin=/myhome/bin
export PATH=${mybin}:${PATH}

alias p4admin='/myhome/p4admin.pl -p perforce:1666'
alias vt='/depot/p4_utilities/viewtool'

alias vi='/usr/bin/vim'

alias perltidy='/myhome/bin/perltidy'

#alias cdc 'source /myhome/bin/cdc_my \!:1'
function cdc()
{
  cr=`p4 -p p4p-us01:1666 client -o $1 | /bin/grep ^Root | cut -d':' -f2 | sed -e 's/\t//g'`;
  cd $cr;
}

export P4MERGE=/myhome/p4vmerge
export DISPLAY=10.130.20.58:0.0

alias cd2='cd ../../'
alias cd4='cd ../../../../'
alias cd3='cd ../../../'
alias cd4='cd ../../../../'
alias cd5='cd ../../../../../'

alias ls='ls -h --color=tty '
alias la='ls -a'
alias ll='ls -la '
alias lt='ls -lhrt '
alias lz='ls -lhrS '
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...
alias lf='ls -Gl | grep ^d' #Only list directories
alias lsd='ls -Gal | grep ^d' #Only list directories, including hidden ones
alias lnd='ls -l | grep -v ^d'
alias lsd='ls -l | grep ^d'
alias lsl='ls -l | grep ^l'

alias h='history'
alias grep='grep -rnE --color'
alias vd='vimdiff'
alias tf='tail -f'
alias cls='clear'

alias df='df -h'
alias du='du -h'
alias du0='du --max-depth=0'
alias du1='du --max-depth=1'

alias apt-get='sudo apt-get install -y'
alias sshmy='ssh mythtv@mythtv'
alias rshmy='rsh -l myaccount myremotehost'
#alias sa='source ~/.aliases'
alias sb='source ~/.bashrc'
alias cmount="mount | column -t"
alias pp="ps -axuf | pager"
alias sum="xargs | tr ' ' '+' | bc" ## Usage: echo 1 2 3 | sum


#download whole website
alias websiteget="wget --random-wait -r -p -e robots=off -U mozilla"

#show acitve ports
alias port='netstat -tulanp'

#show internet usage
alias listen="lsof -P -i -n"

#Clear and view current dir
alias clr='clear;pwd;ls'

#Create intermediate directories
alias md='mkdir -p'

#List top ten largest files/directories in current directory
alias ducks='du -cks *|sort -rn|head -11'

#Show hidden files only
alias l.='ls -d .* --color=auto'

#Show disk usage of current directory
alias ds='du . -d 1 -ah|sort -rh'

#Copy With Rsync
alias rfresh='rsync -avz --progress -e  "ssh -p 2233" user@110.11.11.11:/your/remote/path /my/local/path'

#Debian quick update
alias upgrade='apt-get update && apt-get upgrade && apt-get clean'

function mcd() {
mkdir $1 && cd $1;
}

function cdls() {
cd "$1"; ls;
}

function psgrep() {
ps axuf | grep -v grep | grep "$@" -i --color=auto;
}

function fname() {
find . -iname "*$@*";
}

# removes lines from $1 if they appear in $2
function remove_lines_from() {
grep -F -x -v -f $2 $1;
}

#backup file
function backup() {
cp "$1"{,.bak};
}

#cd and ls a directory
function cdl ()
{
    cd $1;
    ls
}

#Paginated colored tree
function  ltree()
{
    tree -C $* | less -R;
}

#Make and cd into directory
function mcd() {
  mkdir -p "$1" && cd "$1";
}

#Reconnect or start a tmux or screen session over ssh
function sssh (){ ssh -t "$1" 'tmux attach || tmux new || screen -DR'; }

#Copy public key to remote machine (dependency-less)
function authme() {
  ssh "$1" 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys' \
    < ~/.ssh/id_dsa.pub
}

#Serve directory on localhost:80
function servedir(){
    sudo python -m SimpleHTTPServer 80
}

#Extract most know archives with one command
function extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

#find and kill a process
function fkill(){
    ps -aux | grep "$1" | grep -v grep | awk '{print $2;}' | while read p; do kill -9 $p; done
}

#Find text in files
function ft() {
find . -name "$2" -exec grep -il "$1" {} \;
}


# go back x directories
function b() {
    str=""
    count=0
    while [ "$count" -lt "$1" ];
    do
        str=$str"../"
        let count=count+1
    done
    cd $str
}

#Copy folder to remote server
function putout() {
tar czf - ${1} | ssh ${2} tar xzf - -C ${3}
}

#enable auto completion
if [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi
```
