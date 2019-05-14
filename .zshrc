# Path to your oh-my-zsh installation.
export ZSH=/Users/roryj/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(vi-mode, aws, zsh-autosuggestions, tmux)

# For zsh tmux addition https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins#tmux
ZSH_TMUX_AUTOSTART="true"
ZSH_TMUX_AUTOCONNECT="false"

# For zsh autosuggest
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=blue'
bindkey '^F' autosuggest-accept

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

alias ls='ls -G'

alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

bindkey -v
bindkey '^R' history-incremental-search-backward

# Adding go to path
export PATH="/usr/local/go/bin:$PATH"

# Add bin and local bin to path
export PATH="/Users/roryj/bin:$PATH"
export PATH=$PATH:/usr/local/bin 

# configure fuzzy autocomplete on tab
zstyle ':completion:*' matcher-list '' \
 'm:{a-z\-}={A-Z\_}' \
 'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
 'r:[[:ascii:]]||[[:ascii:]]=** r:|=* m:{a-z\-}={A-Z\_}'

# Add go path to path
#export PATH=$GOPATH/bin:$PATH

# Auto complete for awsless
#source /usr/local/share/zsh/site-functions/_awless

# For raspberry pi @ home
alias ssh-rpi='ssh roryj@192.168.1.112'
