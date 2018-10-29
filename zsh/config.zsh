bindkey -e
#export ZSH=$HOME/.oh-my-zsh
#export ZSHTHEME=$ZSH/themes/jason.zsh-theme
export VISUAL="vim"
export TERMINAL="st"
export HIST_STAMPS="mm.dd.yyyy"
export HISTSIZE=12000
export SAVEHIST=12000
export HISTFILE="$HOME/.zsh_history"
export TERM="xterm-256color"
ZSH_THEME="jason"
setopt prompt_subst
setopt promptsubst
setopt append_history
setopt extended_history
setopt sharehistory
setopt hist_reduce_blanks
setopt always_to_end
setopt complete_in_word
setopt auto_menu