# rb's .xinitrc

# setup keyboard
~/.bin/keymap

# ssh-agent start at boot & load most used keys
if [ -f ~/.ssh/agent.env ] ; then
    . ~/.ssh/agent.env > /dev/null
    if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
        eval `ssh-agent | tee ~/.ssh/agent.env`
        ssh-add ~/.ssh/keys/github@ssh > /dev/null
    fi
else
    eval `ssh-agent | tee ~/.ssh/agent.env`
    ssh-add ~/.ssh/keys/github@ssh > /dev/null
fi

# dwm status bar
~/.bin/dwm_status &

# bg wallpaper
feh --bg-fill ~/.config/wall.jpg

# compositor
compton --config ~/.config/compton.conf -b

# notifications
dunst &

# clipmenu daemon
clipmenud &

unclutter &

# starts with LVDS by default
monitor -l

# wm
exec dwm
