# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# enable nix packages
if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer






# User configuration

# You may need to manually set your language environment
# export LC_CTYPE=en_US.UTF-8
# export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# source functions
for f in ~/.config/zsh/functions/*; do source $f; done

# PLUGINS
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
source ~/.config/zsh/plugins/sudo.plugin.zsh
# source ~/.config/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions.plugin.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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



if [ -e /home/work/.nix-profile/etc/profile.d/nix.sh ]; then . /home/work/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
