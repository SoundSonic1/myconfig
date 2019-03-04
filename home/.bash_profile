#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
source ~/.profile

# Autostart X at login
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    exec startx #&> ~/.Xoutput
fi

