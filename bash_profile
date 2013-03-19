# ALIASES

    # -h: when used with the -l option, use units to reduce the number of digits
    # -G: enable colorized output.
    # -F: display "/" after directories, "*" after executable files, etc.
    alias ls='ls -hGF'

    # creates intermediate directories as required 
    alias mkdir='mkdir -p'

    # ignore case by default
    alias grep='grep -i'

    # use MacVim instead of regular vim
    alias vim='mvim'


# BASH BEHAVIOR

    # when changing directory small typos can be ignored by Bash
    shopt -s cdspell

    # append rather than overwrite the history on disk
    shopt -s histappend

    # append to history after every command.
    export PROMPT_COMMAND="history -a; history -n"

    # enables seeing current branch in the prompt
    if [ -f ~/.git-prompt.sh ]; then
        . ~/.git-prompt.sh
    fi

    # enables git autocompletion
    if [ -f ~/.git-completion.sh ]; then
        . ~/.git-completion.sh
    fi

    # enables bash-completion
    if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
        . /opt/local/etc/profile.d/bash_completion.sh
    fi
     
    # enable git unstaged indicators - set to a non-empty value
    GIT_PS1_SHOWDIRTYSTATE="."
     
    # enable showing of untracked files - set to a non-empty value
    GIT_PS1_SHOWUNTRACKEDFILES="."
     
    # enable stash checking - set to a non-empty value
    GIT_PS1_SHOWSTASHSTATE="."
     
    # enable showing of HEAD vs its upstream
    GIT_PS1_SHOWUPSTREAM="auto"
    
    # colors
    GREEN='\[\033[0;32m\]'
    ORANGE='\[\033[0;33m\]'
    RESET='\[\033[0m\]'

    # set prompt to indicate current git branch if available
    PS1="${GREEN}\w${RESET} ${ORANGE}"'$(__git_ps1 "(%s)")'"${RESET}\n⌘ "


# PATH VARIABLE

    export PATH=/usr/local/bin:$PATH
    export PATH=/opt/local/bin:/opt/local/sbin:$PATH
    export PATH=/usr/local/mysql/bin:$PATH


# DJANGO EXPORTS

    # export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

    export LANG="en_us.UTF-8"
    export LC_COLLATE="en_us.UTF-8"
    export LC_CTYPE="en_us.UTF-8"
    export LC_MESSAGES="en_us.UTF-8"
    export LC_MONETARY="en_us.UTF-8"
    export LC_NUMERIC="en_us.UTF-8"
    export LC_TIME="en_us.UTF-8"
    export LC_ALL=
    
# Make 'source .bash_profile' return 0
true
