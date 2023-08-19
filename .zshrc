# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Add MAMP PHP to PATH
export PATH=/Applications/MAMP/bin/php/php7.1.6/bin:$PATH

# Add Apache Ant to PATH
export PATH=/Users/twrk/apache-ant-1.10.1/bin:$PATH

# Add Composer to PATH
export PATH=$HOME/.composer/vendor/bin:$PATH

# Add Yarn to PATH
export PATH="$PATH:yarn global bin" 

# Add personal bin directory to PATH
export PATH=$PATH:/Users/twrk/bin

# Add Ruby to PATH
export PATH=$PATH:/Users/twrk/.gem/ruby/2.6.0/bin

# Add Python3 to PATH
export PATH=$PATH:/usr/bin/python3


# Add MongoDB to PATH
# export PATH=$HOME/mongodb/mongodb-osx-x86_64-3.6.0/bin:$PATH

# Add node_modules to PATH
export PATH=$PATH:./node_modules/.bin

# Path to your oh-my-zsh installation.
export ZSH=/Users/twrk/.oh-my-zsh

# Path to git
export PATH=/usr/local/git/bin/git:$PATH

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="dracula"
#ZSH_THEME="headline"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git z zsh-syntax-highlighting macos
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set default editor to vim
export VISUAL=vim
export EDITOR="$VISUAL"

# nvm
# source ~/dotfiles/.zshrc
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ll="ls -al"
alias dd="cd /Users/twrk/Desktop && ls"
alias projects="cd /Users/twrk/Projects && ls"
alias templates="cd /Users/twrk/Projects/_templates && ls"
alias react="cd /Users/twrk/Projects/React && ls"
alias documents="cd /Users/e/Documents"
alias gs="git status"
alias push="git push origin main"
alias dl="cd ~/Desktop && youtube-dl"
alias dl2="cd ~/Desktop && youtube-dl --ignore-config"
alias chistory="echo "" > ~/.zsh_history & exec $SHELL -l"
alias serve="http-server -o -c-1"
alias live="live-server"
alias eject="drutil tray eject"
alias caffeine="caffeinate -t 144000 &"
alias push="git push origin HEAD"
alias zsh="vim ~/.zshrc"
alias globals="npm list -g --depth 0"
alias shot="screencapture -x -T 3 ~/Desktop/sc.png"
alias omz="omz update"
alias tuts="cd /Users/twrk/Projects/tutelage"
alias ignore="cp /Users/twrk/dotfiles/.gitignore ."
alias ip="curl ifconfig.me"
alias newvite="npm create vite@latest"


# MISC FUNCTIONS
favicon () {
	cp ~/projects/favicon.ico .
	echo "Favicon copied to this directory!"
}
know () {
	cd ~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Knowledge-God
	echo "Changed to the Knowledge-God directory!"
}
dddevs () {
	cd ~/projects/dddevs
	echo "Changed to the dddevs directory!"
}

eslint () {
	cp ~/projects/.eslintrc.json .
	echo "eslint config copied to this directory!"
}

# Unused aliases
# alias showfiles="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"
# alias hidefiles="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"
# above aliases can be done with MacOS shortcut: ⌘ ⇧ .


# zsh-completions
if type brew &>/dev/null; then
FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

autoload -Uz compinit
compinit
fi
# END zsh-completions

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/local/opt/ruby/bin:$PATH"
eval "$(starship init zsh)"
