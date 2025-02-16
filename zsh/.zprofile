#!/bin/zsh

# profile file.  Runs on login.  Environment variables are set here

# Adds '~/.local/bin' to $PATH
export PATH="$PATH:${$(find /home/armytag/.local/bin -type d -printf %p:)%%:}"

# Adds '~/.cargo/bin' to $PATH
export PATH="$PATH:${$(find /home/armytag/.cargo/bin -type d -printf %p:)%%:}"

unsetopt PROMPT_SP

# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc"
#export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"

# Other program settings:
#export QT_QPA_PLATFORMTHEME="gtk2"  # Mozilla smooth scrolling/touchpads
#export AWT_TOOLKIT="MToolkit wmname LG3D"  # May have to install wmname
#export _JAVA_AWT_WM_NONREPEATING=1  # Fix for Java applications in dwm

#[ ! -f ${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc && shortucts >/dev/null 2>&1 &

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
	exec startx
fi
