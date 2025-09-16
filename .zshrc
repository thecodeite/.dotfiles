# Zsh configuration for React/Node.js macOS development

# Enable command auto-correction
setopt correct

# History settings
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt appendhistory
setopt sharehistory
setopt incappendhistory

# Enable completion
autoload -U compinit
compinit

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Node.js and npm aliases
alias ni="npm install"
alias nid="npm install --save-dev"
alias nig="npm install -g"
alias nr="npm run"
alias ns="npm start"
alias nt="npm test"
alias nb="npm run build"
alias nrd="npm run dev"
alias npx="npx"

# Git aliases
alias g="git"
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git pull"
alias gco="git checkout"
alias gb="git branch"
alias gd="git diff"
alias glog="git log --oneline --graph --decorate"

# React/JavaScript development aliases
alias rn="npx react-native"
alias cra="npx create-react-app"
alias expo="npx expo"
alias next="npx next"

# Directory navigation
alias ll="ls -la"
alias la="ls -A"
alias l="ls -CF"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# macOS specific
alias showfiles="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"
alias hidefiles="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"

# Helpful utilities
alias reload="source ~/.zshrc"
alias path='echo -e ${PATH//:/\\n}'
alias ports="lsof -i -P -n | grep LISTEN"

# Node version manager (if using nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Add commonly used paths
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"

# React Native Android development (optional)
# export ANDROID_HOME=$HOME/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# Colors for terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Default editor
export EDITOR=nano

# Prompt customization (simple and clean)
PROMPT='%F{blue}%~%f %F{green}$%f '