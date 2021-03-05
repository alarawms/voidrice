# The following lines were added by compinstall

# zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' menu select
zstyle :compinstall filename '.zshrc'

autoload -Uz compinit
zmodload zsh/complist
compinit
_comp_options+=(globdots) #EX

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=9999
SAVEHIST=9999
setopt autocd
bindkey -v

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

autoload -Uz promptinit
promptinit
PROMPT='%F{#5d5d5d}[%f%F{#903749}%n%f%F{#5d5d5d}@%f%F{#903749}%m%f %F{#5e81ac}%1~%f%F{#5d5d5d}]%f%F{#903749}$%f '

function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # beam
        viins|main) echo -ne '\e[5 q';; # block
    esac
}
zle -N zle-keymap-select

# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
source $HOME/.aliases
