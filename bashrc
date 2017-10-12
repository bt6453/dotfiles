############################################################
## Terminal behavior
############################################################

# Change the window title of X terminals
case $TERM in
  xterm*|rxvt|Eterm|eterm)
    #PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
    PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
    ;;
  screen)
    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
    ;;
esac

# Show the git branch and dirty state in the prompt.
# Borrowed from: http://henrik.nyh.se/2008/12/git-dirty-prompt
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\(\1$(parse_git_dirty)\)/"
}

if [ `which git 2> /dev/null` ]; then
  function git_prompt {
    parse_git_branch
  }
else
  function git_prompt {
    echo ""
  }
fi

if [ `which rbenv 2> /dev/null` ]; then
  function ruby_prompt {
    echo $(rbenv version-name)
  }
elif [ `which ruby 2> /dev/null` ]; then
  function ruby_prompt {
    echo $(ruby --version | cut -d' ' -f2)
  }
else
  function ruby_prompt {
    echo ""
  }
fi

if [ `which rbenv-gemset 2> /dev/null` ]; then
  function gemset_prompt {
    local gemset=$(rbenv gemset active 2> /dev/null)
    if [ $gemset ]; then
      echo " ${gemset}"
    fi
  }
else
  function gemset_prompt {
    echo ""
  }
fi

if [ -n "$BASH" ]; then
  export PS1='\[\033[36m\][\u]:\[\033[1;32m\][\w] \[\033[1;31m\]$(git_prompt): \[\033[00m\]'
fi

# Uncomment this IF YOU WANT MORE POWERRRRRR
# if [ -f ~/.bash_powerline ]; then
#  . ~/.bash_powerline
# fi

############################################################
## History
############################################################

# When you exit a shell, the history from that session is appended to
# ~/.bash_history.  Without this, you might very well lose the history of entire
# sessions (weird that this is not enabled by default).
shopt -s histappend

export HISTIGNORE="&:pwd:ls:ll:lal:[bf]g:exit:rm*:sudo rm*"
# remove duplicates from the history (when a new item is added)
export HISTCONTROL=erasedups
# increase the default size from only 1,000 items
export HISTSIZE=10000

############################################################
## Aliases
############################################################

if [ -e ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

############################################################
## bundler environment variables
############################################################
export BUNDLER_EDITOR='subl'

############################################################
## Bash Completion, if available
############################################################

if [ -f /usr/local/etc/bash_completion ]; then
  . /usr/local/etc/bash_completion
elif  [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
elif  [ -f /etc/profile.d/bash_completion ]; then
  . /etc/profile.d/bash_completion
elif [ -f ~/.bash_completion ]; then
  # Fallback. This should be sourced by the above scripts.
  . ~/.bash_completion
fi

############################################################
## Ruby Performance Boost (see https://gist.github.com/1688857)
############################################################

# export RUBY_GC_MALLOC_LIMIT=60000000
# # export RUBY_FREE_MIN=200000 # Ruby <= 2.0
# export RUBY_GC_HEAP_FREE_SLOTS=200000 # Ruby >= 2.1
