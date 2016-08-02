# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename '/Users/prem/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

## zsh bindkeys

# by default: export WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>'
# we take out the slash, period, angle brackets, dash here.
export WORDCHARS='*?_[]~=&;!#$%^(){}'

## end zsh bindkeys

export CLICOLOR=1
export EDITOR=vim


alias gits="git branch -v; printf \"\n\"; gs || git status"
alias ls="ls -Fa"
alias lsl="ls -Fal"
alias sl="ls"

# https://github.com/nvbn/thefuck
eval $(thefuck --alias wups)

# https://github.com/mroth/scmpuff
eval "$(scmpuff init -s)"

# Assuming it's not Sublime Text 2
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# Tab should say the current pwd, not just "bash"
#if [[ "$TERM_PROGRAM" == "Apple_Terminal" ]] && [ -z "$INSIDE_EMACS" ]; then
    update_terminal_cwd() {
        # Identify the directory using a "file:" scheme URL,
        # including the host name to disambiguate local vs.
        # remote connections. Percent-escape spaces.
        local SEARCH=' '
        local REPLACE='%20'
        local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
        printf '\e]7;%s\a' "$PWD_URL"
    }
#fi

# root prompt
[ $UID = 0 ] && export PROMPT=$'%{\e[0;31m%}[%{\e[0m%}%n:%{\e[0m%}%~%{\e[0;31m%}]%{\e[0m%}%# '
# normal user prompt
[ $UID != 0 ] && export PROMPT=$'%{\e[0;36m%}[%{\e[0m%}%n:%{\e[0m%}%~%{\e[0;36m%}]%{\e[0m%}%# '


# Java
export JAVA_HOME=$(/usr/libexec/java_home)

export PATH=${JAVA_HOME}/bin:/usr/local/sbin:$PATH

# Must always be the last line
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
