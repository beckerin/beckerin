export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="heapbytes"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git
  vscode
  zsh-autosuggestions  
  zsh-syntax-highlighting
  )

source $ZSH/oh-my-zsh.sh

# omz
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="thunar ~/.oh-my-zsh"

# exa --icons

# git
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'

#my

#alias nvim='$HOME/.local/bin/lvim'
#alias lvim='$HOME/.local/bin/lvim'
alias pinstall='sudo apt-get install'
alias upinstall='sudo apt-get update && apt-get update'
