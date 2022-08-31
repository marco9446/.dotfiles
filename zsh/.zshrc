# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH





# source antidote and load plugins from `${ZDOTDIR:-~}/.zsh_plugins.txt`
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load


# User configuration

# You may need to manually set your language environment
# export LC_CTYPE=en_US.UTF-8
# export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# source functions
for f in ~/.config/zsh/functions/*; do source $f; done

# PLUGINS Variables
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20


# THEME
# source ~/.config/zsh/themes/robbyrussell.zsh-theme


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# User VARIABLES
# windows specific
if grep -qEi "(Microsoft|WSL)" /proc/version &> /dev/null ; then
    WIN_HOME_RAW="$(cmd.exe /c "<nul set /p=%UserProfile%" 2>/dev/null)"
    WIN_HOME="$(wslpath $WIN_HOME_RAW)"
fi

# ALIASES
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


if [ -e /home/work/.nix-profile/etc/profile.d/nix.sh ]; then . /home/work/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
