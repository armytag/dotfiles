# Enable colors
autoload -U colors && colors
#setopt autocd	# Automatically cd into type directory
stty stop undef	# Disable ctrl-s to freeze terminal
setopt interactive_comments

# History in cache directory:
HISTFILE=/home/armytag/.cache/zsh/histfile
HISTSIZE=1000000
SAVEHIST=1000000

# Load aliases
alias ls='ls --color=auto'
alias cb='cd ..'
alias fd='find . -type d | sed "/\.git/d" | fzf'
alias ff='find . -type f | sed "/\.git/d" | fzf'
alias sd='cd $(find . -type d | sed "/\.git/d" | fzf)'
alias sf='nvim $(find . -type f | sed "/\.git/d" | fzf)'
alias vim='nvim'
alias gdvim='nvim --listen /tmp/nvimsocket'
alias source-conda='source /home/armytag/.config/zsh/conda-zshrc'

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

setopt extendedglob nomatch
setopt NO_CASE_GLOB

unsetopt beep notify

# vi mode
bindkey -v
export KEYTIMEOUT=5

# use vim keys in tab complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes
function zle-keymap-select() {
	case $KEYMAP in
		vicmd) echo -ne '\e[1 q';;  # block
		viins|main) echo -ne '\e[5 q';;  # beam
	esac
}
zle -N zle-keymap-select
zle-line-init() {
	zle -K viins  # initiate 'vi insert' as keymap (can be removed if 'bindkey -v' has been set elsewhere)
	echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q'  # use beam shape cursor on startup
preexec() { echo -ne '\e[5 q' ;}  # use beam shape for each new prompt

#LS_COLORS=$LS_COLORS:'di=33:ln=36:fi=34' ; export LS_COLORS; ls

setopt PROMPT_SUBST
setopt TRANSIENT_RPROMPT

# Git prompt configuration
autoload -Uz vcs_info
precmd() {
	vcs_info
	if [[ -n ${vcs_info_msg_0_} ]] then
		PS1="${vcs_info_msg_0_}%# "
	else
		PS1="%T %F{yellow}[%1/]%f %# "
	fi
}

zstyle ':vcs_info:git:*' formats \
	'%F{yellow}%r%F{green}(%b)%f %F{blue}%1/%f [%F{green}$(git-staged-changes)%f %F{red}$(git-unstaged-changes)%f]'

# Functions for calculating git changes
function git-staged-changes() {
	echo $(git status -s | sed '/^[^A-Z]/d' | wc -l)
}
function git-unstaged-changes() {
	echo $(git status -s | sed '/^[A-Z\?]/d' | wc -l)
}

# Python cryptography for conda
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

