# Aliases
alias ls='ls -GFh'
alias htdocs='cd /Applications/MAMP/htdocs'
alias dev='cd /Users/e/Dev'
alias desktop='cd /Users/e/Desktop'
alias gs='git status'
alias projects='cd /Users/e/Projects'
alias serve='http-server .'
alias idea='open -a "`ls -dt /Applications/IntelliJ\ IDEA*|head -1`"'

# This command tells terminal to add color
export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad
export LSCOLORS=exFxCxDxBxegedabagacad

# This command changes the terminal prompt
#PS1='\[\e[0;33m\]\h\033[32m\]@\u:\w \033[31m\e[1mprompt: \[\e[m\]'
#PS1='\[\e[0;35m\]\h\033[32m\] in \e[93m\w\e[0m\e[96m\n🚀 '

#export PS1='\[\e[93m\]\[\w\] 🚀  \[\e[96m\]'
export PS1='\[\e[93m\]\[\w\] 🚀  \[\e[96m\]'

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

source "`brew --prefix`/etc/grc.bashrc"

# Add MAMP PHP to PATH
export PATH=/Applications/MAMP/bin/php/php7.1.0/bin:$PATH

# Add Apache Ant to PATH
export PATH=/Users/e/apache-ant-1.10.1/bin:$PATH

# Add Composer to PATH
export PATH=$HOME/.composer/vendor/bin:$PATH

# Add MongoDB to PATH
export PATH=$HOME/mongodb/mongodb-osx-x86_64-3.6.0/bin:$PATH
