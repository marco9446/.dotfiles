# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# required for fzf-tab
autoload -U compinit 
compinit

export HISTSIZE=1000        #set history size
export SAVEHIST=1000        #save history after logout
export HISTFILE=~/.zhistory #history file
setopt INC_APPEND_HISTORY   #append into history file
setopt HIST_IGNORE_DUPS     #save only one command if 2 common are same and consistent
setopt EXTENDED_HISTORY     #add timestamp for each entry

# use typed words to limit the up arrow suggestions 
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# You may need to manually set your language environment
# export LC_CTYPE=en_US.UTF-8
# export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# source custom functions
for f in ~/.config/zsh/functions/*; do source $f; done

# PLUGINS Variables
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# THEME
# source ~/.config/zsh/themes/robbyrussell.zsh-theme

# Preferred editor for local and remote sessions
export EDITOR='nvim'

# User VARIABLES
# windows specific
if grep -qEi "(Microsoft|WSL)" /proc/version &> /dev/null ; then
    WIN_HOME_RAW="$(cmd.exe /c "<nul set /p=%UserProfile%" 2>/dev/null)"
    WIN_HOME="$(wslpath $WIN_HOME_RAW)"
fi

# LOAD ALIASES
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# ENABLE P10k prompt
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ANTIDOTE PLUGINs from `${ZDOTDIR:-~}/.zsh_plugins.txt`
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

# ENABLE NIX STORE 
if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
