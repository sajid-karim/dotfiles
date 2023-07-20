# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000



# If id command returns zero, you got root access.
if [ $(id -u) -eq 0 ];
then # you are root, set red colour prompt
  PS1="🎅\\[$(tput setaf 1)\\]\\u@\\h:\\w #\\[$(tput sgr0)\\]"
else # normal
  PS1="🎅\[\e[33;41m\][\[\e[m\]\[\e[32m\]\u\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[34m\]\h\[\e[m\]\[\e[33;41m\]]\[\e[m\]🎄 "
fi
