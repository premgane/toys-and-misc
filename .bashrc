export GOPATH=/Users/prem/go
export PATH=$PATH:/Users/prem/Desktop/Development/Android/platform-tools:$GOPATH/bin:/Applications/Postgres.app/Contents/Versions/9.3/bin
export UIMA_HOME=/Users/prem/Desktop/Development/uima/apache-uima
export CLICOLOR=1

alias gits="git status"
alias ls="ls -Fa"
alias lsl="ls -Fal"
alias sl="ls"

# Display one column with matches in tab-completion
bind "set completion-display-width 1"

# Autocomplete case insensitive
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"
bind "set completion-map-case on"

# Prettier symlinks
bind "set mark-symlinked-directories on"

# Tab should say the current pwd, not just "bash"
PROMPT_COMMAND='update_terminal_cwd; echo -ne "\033]0; ${PWD##*/}\007"'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
