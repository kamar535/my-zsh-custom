# Emacs daemon and Emacs client.

# alias em="emacsclient -t -a ''"

# This way I can type em <filename> to edit a file. -t tells emacsclient to
# start in terminal mode, and -a '' tell it to start the Emacs daemon process if
# it isn't already running.

# Starting an Emacs Daemon On-Demand and Transparently
#
# http://thegreyblog.blogspot.com/2017/12/starting-emacs-daemon-automatically-at.html

function emacs()
{
    # -c creates a new frame
    # -a= fires a new emacs server if none is running
    emacsclient -c -a= $*
}

# Now, every time you invoke emacs in ZSH, the shell will run the emacs()
# function instead, which will run emacsclient -c -a= and will forward all its
# arguments to it.


