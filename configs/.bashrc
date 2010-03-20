
# Check for an interactive session
[ -z "$PS1" ] && return

# make firefox start-up quicker
export MOZ_DISABLE_PANGO=1

# Alias DEFINITIONS!
alias brightness='~/scripts/brightness'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ping='ping -c 4'
alias sudo="sudo -E"

# Sudo Tab Completion
complete -cf sudo

# SHELL CUSTOMIZATION!
# PS1='[\u@\h \W]\$ '
PS1="\033[1;37m\]┌─[\[\e[36;1m\]\u@\[\e[32;1m\]\H\[\033[1;37m\]] \n\[\033[1;37m\]└─[\[\033[0;36m\]\w\[\033[1;37m\]]> \[\e[0m\]"
