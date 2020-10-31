#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# Eye candy for terminal
if [ -f /usr/local/bin/screenfetch-c ]; then screenfetch-c -E ; fi

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# set terminal session to eng
# export LANG=C

# Prevent dublicates in bash history
export HISTCONTROL=ignoreboth:erasedups

# Use ccache for command line
export PATH="/usr/lib/ccache/bin/:$PATH"

# termite: keep track of directory in new tab
. /etc/profile.d/vte.sh

##### Some convenient aliases ######
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias vi='vim'
alias ll='ls -lah'
alias screenfetch='screenfetch-c -E'
# turn on optimizations for haskell code
alias ghc='ghc -O'
# tell okular to shut up
# alias okular='okular > /dev/null 2>&1'
alias diff='diff --color'
alias Harddrive='udisksctl unmount -b /dev/sda1 && sleep 1 && sudo hdparm -y /dev/sda1'
alias speedtest='speedtest --bytes'
# eye candy 
alias matrix='LC_ALL=C tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"'
alias background='feh --bg-fill --randomize ~/Pictures/Wallpapers/*'
alias black='xset dpms force off'
# alias Suspend='systemctl suspend && slock'
# ssh logins
alias pktlogin='ssh -Y ktran@141.30.85.34'
alias taurus='ssh -Y s0421427@taurus.hrsk.tu-dresden.de'
alias taurus2='ssh -t s0421427@login.zih.tu-dresden.de ssh taurus.hrsk.tu-dresden.de'
alias mathscript='MathKernel -noprompt -run <'
alias cmus='cmus && feh --bg-fill --randomize ~/Pictures/Wallpapers/*'
alias externalmonitor='xrandr --output eDP --off --output DisplayPort-0 --mode 2560x1440 --rate 74.78 && sleep 2 && nitrogen --restore'

