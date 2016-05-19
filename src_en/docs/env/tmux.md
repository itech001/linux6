#Tmux

Modified from [tmux tutorial](http://linoxide.com/how-tos/install-tmux-manage-multiple-linux-terminals/)  

A Linux system administrator usually work from remote to manage his servers.
While managing those servers, he may use SSH connection to the servers. Have
you ever face the situation where you need more console at the same time? If
you are remote via SSH to the machines, you can open more window to create
more SSH connections. But it may not effective since you can’t see all the
windows at the same time. And where the connections is lost, you will lose
what you have done before. Now to solve the situation, there is an open-source
application called **[tmux](http://tmux.sourceforge.net/)**.

### What is Tmux

**Tmux is a Terminal Multiplexer**. It enables a number of terminals to be created, accessed and controlled from a single screen.

### Features

Here’s a list of tmux features :

>  Create a number of multiple virtual console (of course :) )  
Split console in vertical or horizontal mode into panes  
Resize the size of each panes  
Attach, detach and re-attached window  
Highly configurable with tmux.conf file  
Client - server model  
Zoomed panes  
.... [and more](http://sourceforge.net/p/tmux/tmux-code/ci/master/tree/CHANGES)  

### Installing Tmux

Method 1: Binary package

On Debian / Ubuntu based

> $ sudo apt-get install tmux

On RedHat / CentOS based

> $ yum install tmux

Method 2 : Compiling the source

If your Linux repositories does not provide the latest one, you can install
the latest one manually. At this article is written, the latest version of
tmux is 1.8. To get the latest one, you can download it from tmux website,
compile it and install it. Here are the steps on Linux CentOS 6.4.

**1. Download the source file and requirement package**

> $ wget http://downloads.sourceforge.net/tmux/tmux-1.8.tar.gz  
$ wget
https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz

**2. Extract the files**

> tar zxvf tmux-18.tar.gz  
tar zxfv libevent-2.0.21-stable.tar.gz

**3. Install pre-requisites application**

> yum install gcc kernel-devel make ncurses-devel

Those application is needed to compile the tmux source file.

**4. Install libevent2 source**

>  cd libevent-2.0.21-stable  
 ./configure --prefix=/usr/local  
 make && make install  

**5. Install tmux source**

>  cd tmux-1.8  
 LDFLAGS = “-L/usr/local/lib -Wl,-rpath=/usr/local/lib” ./configure --prefix=/usr/local  
 make && make install  

**6. Add tmux into path environment**

>  cd ~  
export PATH=$PATH:/usr/local/bin

### Run tmux

After the installation is finish, then type tmux on your console to run tmux.

A new session is now started. At the bottom line, you will find a bar contains
some information. Here’s how to read it :

>  [0] 0:bash* : is the window number and the window name  
   pungki@dev-machine : is the username and the hostname  
   01:30 : tell us the current time  
   12-Jan-14 : tell us the current date  

### Splitting tmux vertically

To split tmux vertically, just press **(Ctrl-b) + %** . Then the screen will
be separated vertically.

### Splitting tmux horizontally

To split tmux horizontally, press **(Ctrl-b) + “** . Then the screen will be
separated horizontally.

But of course we can mix them. Here’s another example.

### Moving between panes

Of course you will need move between panes. Otherwise, there is no use to
create panes. By default, Linux console does not support mouse. So we need to
know how to move between panes manually. There are some ways move between
panes. Here’s a list how to to that.

>  Move Left : (Ctrl-b) + Left arrow OR (Ctrl-b) + {  
   Move Right : (Ctrl-b) + Right arrow OR (Ctrl-b) + }  
   Move Up : (Ctrl-b) + + Up arrow  
   Move Down : (Ctrl-b) + Down arrow  
   Move to the next pane : (Ctrl-b) + o  
   Show number for each panes and press the number : (Ctrl-b) + b q + pane number. For example : (Ctrl-b) + b q + 1 will move you to pane number 1  

### Resizing panes

You may want to resize panes to fit your need. Here’s a list how to do that :

>  (Ctrl-b) + : then type resize-pane -D (Resizes the current pane down)  
   (Ctrl-b) + : then type resize-pane -U (Resizes the current pane upward)  
   (Ctrl-b) + : then type resize-pane -L (Resizes the current pane left)  
   (Ctrl-b) + : then type resize-pane -R (Resizes the current pane right)  
   (Ctrl-b) + : then type resize-pane -D 5 (Resizes the current pane down by 5 cells)  
   (Ctrl-b) + : then type resize-pane -U 5 (Resizes the current pane upward by 5 cells)  
   (Ctrl-b) + : then type resize-pane -L 5 (Resizes the current pane left by 5 cells)  
   (Ctrl-b) + : then type resize-pane -R 5 (Resizes the current pane right by 5 cells)  
   (Ctrl-b) + : then type resize-pane -t 2 5 (Resizes the pane with the id of 2 down by 5 cells)  
   (Ctrl-b) + : then type resize-pane -t -L 5 (Resizes the pane with the id of 2 left by 5 cells)  

**Please note that you need to press the colon sign (:) after pressing Ctrl-b**

From the screenshot above, we try to resize pane number 1. If the active pane
is pane number 1 then we can press (Ctrl-b) + : resize pane -D 13 to make it
down for 13 cells.


### Zoom panes

This feature is new at 1.8 version. You can now zoomed a pane without need to
detach or break it into independent window. At the active pane, press
**(Ctrl-b) + z** to zoom the pane. Pressing it again will bring the zoomed
pane back.

### Make a pane into window

If you wish to exclude your pane into window, then you can do this by pressing
**(Ctrl-b) + :** then type **break pane**. Then your pane will become an
independent window. Next, you are recommended to give it a name in order to
make it easy to remember.

### Closing panes

To close a pane, simply type **exit** from the pane. Then it will close.

> $ exit

### Detach and Re-attach Tmux

One of Tmux advantage is you can detach tmux without losing anything you
are working on it. Then you can re-attach Tmux with the condition exactly
before you detach it. This is very useful if you have to move between
computers and don’t want to lose anything.

To detach it, use keystroke **(Ctrl-b) + d**

While re-attach the same window can be executed by typing **tmux attach** on
your console.

> $ tmux attach

If you - let say - remote your Linux machine from Windows client using putty,
you still can use tmux. Here’s a sample of Putty client run Tmux.

Tmux is different with [Terminator](http://linoxide.com/tools/terminator-
multiple-gnome-terminal-one-window/). Terminator is a local application which
run on Linux terminal as a terminal multiplexerl. We can’t run Terminator on a
remote machine because it’s a local application.

### Create more window

We are sure that you won't mess your window with a lot of panes. 3 - 5 panes
are may the maximum panes on a single window. More than 5 panes, can make you
uncomfortable. To solve this situation, we can make more tmux window. To
create new window, you can press **(Ctrl-b) + c** . Then you will see at the
status bar, an info like this **[0] 0:bash - 1:bash***

### Rename a window name

To rename a window name, press **Ctrl-b + ,** . (_press Ctrl-b and press comma
sign_). Then provide the name and press Enter to confirm it.

An asterisk sign **(*)** means the current window.

### Moving between Window

To move between window, we can use :

> **(Ctrl-b) + n** : Move to next window  
  **(Ctrl-b) + p** : Move to previous window  
  **(Ctrl-b) + w** : Interactively choose the window (useful if you have more than 2 window)  

Interactively choost the window  

### Closing Window

If you want to close a window, simply press **(Ctrl-b) + &**

### Configuring Tmux

Tmux is highly configurable. You can edit **tmux.conf** file to do this. If you don’t have the file, you can create it. For system wide, you can put the tmux.conf in /etc folder. Or put it on ~/.tmux.conf for user spesific settings. Here some example of tmux.conf content. Here are some example of tmux.conf configuration content.

### Change the Prefix Key

By default, tmux prefix is **Ctrl-b**. Every command in tmux, must begin with
Ctrl-b keystroke. If you don’t like it, you can change it. Let say you want to
change it into **Ctrl-a**. Just put this line into your tmux.conf :

> unbind C-b  
set -g prefix C-a

Save the file and re-run tmux.
Please note, that in order to make
tmux.conf changes works, you need to exit all tmux sessions before. If you
detach a tmux session, and re-attach it, the changes will not work.

### Change the splitting panes

As mentioned above, tmux use **% sign** and **“ sign** to split panes. You may
don’t like the combination. To change it, just put this line into tmux.conf

> unbind %  
bind h split-window -v  
unbind ‘ ” ’  
bind v split-window -h  

The above configuration will change :

>  % sign into h letter for vertically split  
   “ sign into v letter for horizontally split

### Change the status bar looks

>  Status bar theme
set -g status-bg black  
set -g status-fg white  


>  Highlight and Notify  
set-window-option -g window-status-current-bg red  
setw -g monitor-activity on  
set -g visual-activity on  

The above configuration will highlight the active window with red color.

### Change the numbering system of panes and windows

By default, the numbering system of panes and windows are start from 0. If you
want to start it from 1, you can put this line on your .tmux.conf file.

>  start with window 1 (instead of 0)  
set -g base-index 1

>  start with pane 1  
set -g pane-base-index 1

There are still a lot of configuration that can be made for tmux. More
parameters can be found inside **tmux manual section Options**.

### Conclusion

Tmux may help you boost your productivity whenever you’re working on console
based. As usual, you can always type **man tmux** on your console to explore
more detail. If you want tmux manual in PDF form, you may [visit this
link](http://cheasy.de/tmux.pdf).
