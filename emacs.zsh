# Emacs daemon and Emacs client.

# alias em="emacsclient -t -a ''"

# This way I can type em <filename> to edit a file. -t tells emacsclient to
# start in terminal mode, and -a '' tell it to start the Emacs daemon process if
# it isn't already running.

# Starting an Emacs Daemon On-Demand and Transparently
#
# http://thegreyblog.blogspot.com/2017/12/starting-emacs-daemon-automatically-at.html

function eemacs()
{
    # -c creates a new frame
    # -t terminal mod
    # -a= fires a new emacs server if none is running

   if emacsclient --help | grep -- ^-c &>/dev/null; 
   then 
    emacsclient -c -a="" $* 
   else
    emacsclient -a="" $*
   fi  
}

# NOTE: On macOS 10.14.6 Mojave, emacsclient does not support the -c option. 

# Now, every time you invoke emacs in ZSH, the shell will run the emacs()
# function instead, which will run emacsclient -c -a= and will forward all its
# arguments to it.