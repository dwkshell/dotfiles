# rb's .xinitrc

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

# wm
exec i3
