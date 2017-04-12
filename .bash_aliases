alias cleanpycs="find . -name '*.pyc' -print0|xargs -0 rm"
alias currentbranch="git rev-parse --abbrev-ref HEAD"

# Prompt
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PS1='\[\e[0;33m\]\h:\W \u\$\[\e[m\] '

# Virtualenvwrapper setup
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# make GCC not build for PPC or 32-bit. Because it's no longer 1996, or 2001, respectively
export ARCHFLAGS="-arch x86_64"

export EDITOR="emacs" # because life is too short

alias ls='ls -al'
alias rm='rm -i'

# memcached bouncing
alias remem="launchctl stop com.danga.memcached && launchctl start com.danga.memcached"

# Python shortcuts
alias devsmtp="python -m smtpd -n -c DebuggingServer localhost:25252"

# Django shortcuts
alias schem="./manage.py schemamigration"
alias datam="./manage.py datamigration"
alias makemig="./manage.py makemigrations"
alias migr="./manage.py migrate"
alias migrl="./manage.py showmigrations"
