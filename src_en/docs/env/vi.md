#VIM

Modified from [another-vim-tutorial](http://tips.webdesign10.com/another-vim-tutorial)  

### An Introduction to Vim

Vim is an open-source, powerful and configurable text editor.

### vimtutor

There is also a tutorial built into vim that you can study to learn more. To start the Vim tutor, just type vimtutor in a terminal.

### Getting help

**F1** — this key will get you into the help pages of Vim from within the
program, although if you are running vim inside a something like GNOME
terminal, you might get the help pages for GNOME terminal when you use F1.

The following help commands will always be available:

>:help — open the help pages  
:q — this will close the help screen. If the help screen is not open, it will exit Vim.  
:help user-manual — this will open the full user manual  

### Open Vim

To start Vim in Linux, just type vim in the terminal. You can optionally
specify a file to open or create — if the file exists it will open the file,
and if the file does not exist, it will be created. For example:

> vim file.txt

Pressing either the letter **i** key or the **INS** key will put you into Insert
mode where you can enter text. Push the **ESC** key to switch to Normal mode
where you can enter Vim commands.

### Closing Vim

>:q — quit Vim  
:wq — save file and quit Vim  
:q! — quit without saving  

### Saving a file in Vim

>:w — saves the current file.  
:w FILENAME — save the file with the filename that you provide. If you specify a different name than the filename that you originally opened, Vim will go back to the original file name if you save it another time in the same session without specifying the new file name.  
:saveas FILENAME — this will save the file with your new name and continue editing it under the new filename.  
:#,# w FILENAME — saves just text between line numbers that you specify.  

### Moving around the document

> h — moves cursor left  
l — moves cursor right  
j — moves cursor down  
k — moves cursor up

>w — moves cursor to beginning of next word  
b — moves to the beginning of previous word  
e — moves cursor to end of the next word  
ge — moves to the end of the previous word  
$ — moves cursor to the end of line  
^ — moves cursor to the first non-space character of line  
0 — pressing the number zero moves to the absolute beginning of the line  
[number] Shift-g — moves you to the specified line number  
Ctrl-g — tells you what line you are on  
gg — go to the first line of the file  
[number]% — moves to to a certain percentage of the file, e.g., typing 30% moves you to 30% from the top of the file.  

Like most Vim commands, prefix the command with a number to repeat it. So
typing 3w will move the cursor forward by 3 words.  

### Adding text

Vim generally starts in Normal mode. To insert text into your file, press
the letter **i**. To return to Normal mode, press the **ESC** key, or more
conveniently Ctrl-c or Ctrl-[.  

>i — enters insert mode, inserting new text before the point of the cursor  
I — moves the cursor to the beginning of the line and enters insert mode.  
a — enters insert mode, inserting (appending) new text _after_ the current point of the cursor  
A — enters insert mode, appending text to the end of the current line  
o — opens a line below the cursor and enters insert mode.  
O — opens a line above the cursor and enters insert mode  

### Deleting text

>dd — deletes the current line  
x — deletes one letter under the cursor  
dw — deletes from the cursor to the end of the word including the space  
de — deletes from the cursor to the end of the word not including the space  
d$ — deletes from cursor to the end of the current line  

You can tell Vim to repeat commands by giving it a number. For example, typing
4dw will delete from the cursor to the end of the current word, plus 3 more
words including the space after the word. It can also be typed with the number
in the middle like this d4w and it will do the exact same thing as the
previous example.

### How to undo commands in Vim

This is one of the most important things to know:

>u — undo command  
U — undo everything on the line  
CTRL-r — redo command (after undoing it)  

### Copy / paste in Vim

When you delete text it is stored by Vim and you replace it by putting it
back with the **p** key.

> y - copy
p — paste the last deleted text on the line below the cursor.

### Retreiving and inserting a file into another file

You can insert another text file into the current text file.

>:r FILENAME — inserts FILENAME into the current file.

### Replacing text

> r — press the letter **r** and then the letter that you want to replace the letter under the cursor with.  
Shift-R — this works like the Insert key. It allows you to type on top of the text, replacing it. When done, press **ESC** to exit.

### Changing text

> cw — change the text from the cursor to the end of the word (deletes and goes into insert mode  
c$ — change the text from the cursor to the end of the line

### Searching for text

>/ — search for text in a forward direction  
? — search for text in a backwards direction  
n — search again in the same direction  
Shift-N — search again in the opposite direction  
f — press **f** and then another character and the cursor will move to that character on the current line.  
Shift-F — like **f** but searches backwards  
t — like **f** except that it moves the cursor one character before the specified character  
Shift-T — like **t** but in a backwards direction  

There are many other nice tricks you can employ. While in the search mode, try
the following options:

>:set ic — ignore case (i.e., case-insensitive search)  
:set hls is — make it a highlighted incremental search  
:set noh — remove the highlighing option  

### Substitute, or find and replace text

>:s/old/new/ — Substitutes new for old on the current line, but only the first occurance of the word.  
:s/old/new/g — substitutes new for old every time it appears on the current line.  
:#,#s/old/new/g — substitutes new for old every time it occurs between line numbers placed where the # symbols are. (Ctrl-g will tell you the current line number that the cursor is on.)  
:%s/old/new/g — substitutes new for old every time it occurs in the entire file.  
:%s/old/new/gc — this works like the previous example except asks for confirmation each time the text is replaced.  

### Matching parentheses

> % — helps you find matching brackets: (, [, and {

### Executing commands

You can send commands to the terminal from within Vim, for example to list the
contents of a directory.

Here are a couple of examples in Linux, :

> :!ls — This will list the contents of the current directory, and then return you to Vim when you are done.

You can even run external programs from within Vim by prefixing the commands
with :!.

### More vim Tutorials

>[Vim docs](http://vimdoc.sourceforge.net/) — Everything about vim.  
[More good vim tips](http://www.successtheory.com/tips/vimtips.html), especially for advanced searching.  
[Seven Habits of Effective Text Editing](http://www.moolenaar.net/habits.html)  
[Vim Cookbook](http://www.oualline.com/vim-cook.html)  
[Portable GVim](http://portablegvim.sourceforge.net/) — Take Vim with you.  

### Vim Cheatsheets

>[Graphical cheatsheet and tutorials](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html)  
[Vim cheatsheet](http://www.fprintf.net/vimCheatSheet.html)  
[Small Vim cheatsheet](http://worldtimzone.com/res/vi.html)   
[Vim cheatsheet in several formats](http://bullium.com/support/vim.html)  
[Download a good Vim cheatsheet here](http://docs.cs.byu.edu/docs/vi_intro/5.php)  
[Learning Vi, the cheatsheet technique](http://www.gentoo.org/doc/en/vi-guide.xml)  
