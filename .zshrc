# Environment variables
export NODE_ENV="development"

# Aliases
alias zsc="code ~/.zshrc"
alias zs="source ~/.zshrc"
## External storage drivers aliases
alias workspace="/mnt/d/workspace"
alias ssd="~"
alias hd="/mnt/d/workspace"
## M1 stuff
alias mbrew="arch -x86_64 /usr/local/bin/brew"

# ZSH Variables
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="spaceship"

# ZSH Plugins
plugins=(git zsh-autosuggestions zsh-completions zsh-syntax-highlighting copypath copyfile dirhistory docker history web-search)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

# Lunar Vim
export PATH="$HOME/.local/bin":$PATH

# Android Studio stuff
export JAVA_HOME=/usr/lib/jvm/java-1.17.0-openjdk-amd64
export ANDROID_HOME=/home/rodrigorvsn/Android
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Lunarvim env Path
export PATH=/home/rodrigorvsn/.local/bin:$PATH

# Bun env Path
export BUN_INSTALL="$HOME/.bun" 
export PATH="$BUN_INSTALL/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/rodrigorvsn/.bun/_bun" ] && source "/home/rodrigorvsn/.bun/_bun"

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
