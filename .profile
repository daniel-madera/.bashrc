# ~/.profile: executed by the command interpreter for login shells.
export EDITOR=/usr/bin/vim

# add bash completion
if [ -f /etc/bash_completion ]; then
 . /etc/bash_completion
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
