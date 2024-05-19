# PATH
export PATH=/usr/local/bin:$PATH

# bun path
export PATH=/usr/local/stow/bun/bin:$PATH

# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# oh-my-zsh theme
ZSH_THEME="robbyrussell"

# Hyphen-insensitive completion.
HYPHEN_INSENSITIVE="true"

# oh-my-zsh auto-update behavior
zstyle ':omz:update' mode auto      
zstyle ':omz:update' frequency 13 # (days)

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Disable marking untracked files under VCS as dirty
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Command execution timestamp 
HIST_STAMPS="yyyy-mm-dd"

# oh-my-zsh plugins 
plugins=(git 1password aliases catimg dotenv node npm nvm perl)
source $ZSH/oh-my-zsh.sh

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# Language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Load Angular CLI autocompletion.
source <(ng completion script)

# Custom aliases
alias bc="bun run --bun"

# mise-en-place
eval "$(/usr/local/bin/mise activate zsh)"

