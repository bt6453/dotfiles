# Adds an alias to the current shell and to this file.
# Borrowed from Mislav (http://github.com/mislav/dotfiles/tree/master/bash_aliases)
add-alias ()
{
   local name=$1 value=$2
   echo "alias $name='$value'" >> ~/.bash_aliases
   eval "alias $name='$value'"
   alias $name
}

############################################################
## List
############################################################

if [[ `uname` == 'Darwin' ]]; then
  alias ls="ls -G"
  # good for dark backgrounds
  export LSCOLORS=gxfxcxdxbxegedabagacad
else
  alias ls="ls --color=auto"
  # good for dark backgrounds
  export LS_COLORS='no=00:fi=00:di=00;36:ln=00;35:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;31:'
  # For LS_COLORS template: $ dircolors /etc/DIR_COLORS
fi

alias l="ls -alh"
alias ll="l"
alias la="l -a"
# long listing, hidden files, reverse sort by timestamp, human readable size
alias lt="ls -larth"

############################################################
## Git
############################################################
alias g="git"

############################################################
## Sublime
############################################################
alias slime="subl"

############################################################
## Ruby
############################################################
alias ber="bundle exec rake"
alias bert="bundle exec rake test"
alias rt="bundle exec ruby -Itest"

############################################################
## Grep
############################################################
alias grin="grep -rin"
