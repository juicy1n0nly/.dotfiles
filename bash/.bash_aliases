alias ls='ls --color=auto'
alias ll='exa -al'
alias lt='ls --human-readable --size -1 -S --classify' # Sort by file size
alias l='ls -la'
alias l.='ls -d .* --color=auto'
alias cd..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias bc='bc -l'
alias mkdir='mkdir -pv'
alias diff='colordiff'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias sha1='openssl sha1'
alias mkdir='mkdir -pv'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias man='man --pager=most'

alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'

# Text Editing
alias neovim='nvim'
alias vi='nvim'
alias svi='sudo nvim'
alias snvim='sudo nvim'
alias edit='nvim'

# Networking
alias ping='ping -c 5'
alias ports='netstat -tulanp'
alias dnstop-ali='dnstop -l 5  ens33'
alias vnstat-ali='vnstat -i ens33'
alias iftop-ali='iftop -i ens33'
alias tcpdump-ali='tcpdump -i ens33'
alias ethtool-ali='ethtool ens33'
alias iwconfig-ali='iwconfig wlan0'

# System
alias meminfo='free -m -l -t'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias cpuinfo='lscpu'
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
alias mount='mount |column -t'

alias which-compositor="inxi -Gxx | grep compositor"
