# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
export PATH=${PATH}:~/bin:~/.local/bin:~/etc/scripts:~/scripts


# Uncomment the following line if you don't like systemctl's auto-paging feature:
export SYSTEMD_PAGER="most"

if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Set nvim as default pager for man pagees
export MANPAGER="/bin/sh -c \"col -b | nvim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
export EDITOR="/usr/bin/nvim"
export TERM=tmux-256color
#export TERM=xterm-256color
export PATH=${PATH}:~/bin:~/.local/bin:~/etc/scripts:~/scripts


#shopt -s autocd
#shopt -s cdspell
#shopt -s dirspell
#shopt -s cmdhist
#shopt -s histappend

#HISTSIZE=500000
#HISTFILESIZE=100000
#PROMPT_COMMAND='history -a'
#HISTTIMEFORMAT='%F %T '
#HISTCONTROL=ignoredups:ignorespace

stty -ixon

# Prompt & Colors

txtblk='\[\e[0;30m\]' # Black - Regular
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
bldblk='\[\e[1;30m\]' # Black - Bold
bldred='\[\e[1;31m\]' # Red
bldgrn='\[\e[1;32m\]' # Green
bldylw='\[\e[1;33m\]' # Yellow
bldblu='\[\e[1;34m\]' # Blue
bldpur='\[\e[1;35m\]' # Purple
bldcyn='\[\e[1;36m\]' # Cyan
bldwht='\[\e[1;37m\]' # White
unkblk='\[\e[4;30m\]' # Black - Underline
undred='\[\e[4;31m\]' # Red
undgrn='\[\e[4;32m\]' # Green
undylw='\[\e[4;33m\]' # Yellow
undblu='\[\e[4;34m\]' # Blue
undpur='\[\e[4;35m\]' # Purple
undcyn='\[\e[4;36m\]' # Cyan
undwht='\[\e[4;37m\]' # White
bakblk='\[\e[40m\]'   # Black - Background
bakred='\[\e[41m\]'   # Red
badgrn='\[\e[42m\]'   # Green
bakylw='\[\e[43m\]'   # Yellow
bakblu='\[\e[44m\]'   # Blue
bakpur='\[\e[45m\]'   # Purple
bakcyn='\[\e[46m\]'   # Cyan
bakwht='\[\e[47m\]'   # White
txtrst='\[\e[0m\]'    # Text Reset

# Prompt colours
#atC="${txtpur}"
#nameC="${txtpur}"
#hostC="${txtpur}"
#pathC="${txtgrn}"
#pointerC="${txtgrn}"
#normalC="${txtwht}"

# Red name for root
#if [ "${UID}" -eq "0" ]; then 
#  nameC="${txtred}" 
#fi

#export PS1="${nameC}\u${atC}@${hostC}\h:${pathC}${pointerC}▶${normalC} "

# Functions

# Change up a variable number of directories
# E.g:
#   cu   -> cd ../
#   cu 2 -> cd ../../
#   cu 3 -> cd ../../../

function cu {
    local count=$1
    if [ -z "${count}" ]; then
        count=1
    fi
    local path=""
    for i in $(seq 1 ${count}); do
        path="${path}../"
    done
    cd $path
}





# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
export PATH=${PATH}:~/bin:~/.local/bin:~/etc/scripts:~/scripts


# Uncomment the following line if you don't like systemctl's auto-paging feature:
export SYSTEMD_PAGER="most"

if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Set nvim as default pager for man pagees
export MANPAGER="/bin/sh -c \"col -b | nvim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
export EDITOR="/usr/bin/nvim"
export TERM=tmux-256color
#export TERM=xterm-256color
export PATH=${PATH}:~/bin:~/.local/bin:~/etc/scripts:~/scripts


#shopt -s autocd
#shopt -s cdspell
#shopt -s dirspell
#shopt -s cmdhist
#shopt -s histappend

#HISTSIZE=500000
#HISTFILESIZE=100000
#PROMPT_COMMAND='history -a'
#HISTTIMEFORMAT='%F %T '
#HISTCONTROL=ignoredups:ignorespace

stty -ixon

# Prompt & Colors

txtblk='\[\e[0;30m\]' # Black - Regular
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
bldblk='\[\e[1;30m\]' # Black - Bold
bldred='\[\e[1;31m\]' # Red
bldgrn='\[\e[1;32m\]' # Green
bldylw='\[\e[1;33m\]' # Yellow
bldblu='\[\e[1;34m\]' # Blue
bldpur='\[\e[1;35m\]' # Purple
bldcyn='\[\e[1;36m\]' # Cyan
bldwht='\[\e[1;37m\]' # White
unkblk='\[\e[4;30m\]' # Black - Underline
undred='\[\e[4;31m\]' # Red
undgrn='\[\e[4;32m\]' # Green
undylw='\[\e[4;33m\]' # Yellow
undblu='\[\e[4;34m\]' # Blue
undpur='\[\e[4;35m\]' # Purple
undcyn='\[\e[4;36m\]' # Cyan
undwht='\[\e[4;37m\]' # White
bakblk='\[\e[40m\]'   # Black - Background
bakred='\[\e[41m\]'   # Red
badgrn='\[\e[42m\]'   # Green
bakylw='\[\e[43m\]'   # Yellow
bakblu='\[\e[44m\]'   # Blue
bakpur='\[\e[45m\]'   # Purple
bakcyn='\[\e[46m\]'   # Cyan
bakwht='\[\e[47m\]'   # White
txtrst='\[\e[0m\]'    # Text Reset

# Prompt colours
#atC="${txtpur}"
#nameC="${txtpur}"
#hostC="${txtpur}"
#pathC="${txtgrn}"
#pointerC="${txtgrn}"
#normalC="${txtwht}"

# Red name for root
#if [ "${UID}" -eq "0" ]; then 
#  nameC="${txtred}" 
#fi

#export PS1="${nameC}\u${atC}@${hostC}\h:${pathC}${pointerC}▶${normalC} "

# Functions

# Change up a variable number of directories
# E.g:
#   cu   -> cd ../
#   cu 2 -> cd ../../
#   cu 3 -> cd ../../../

function cu {
    local count=$1
    if [ -z "${count}" ]; then
        count=1
    fi
    local path=""
    for i in $(seq 1 ${count}); do
        path="${path}../"
    done
    cd $path
}

