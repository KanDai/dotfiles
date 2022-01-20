# homebrew shell setup
eval "$(/opt/homebrew/bin/brew shellenv)"

# fnm shell setup
eval "$(fnm env --use-on-cd)"

# alias
alias ll='ls -l'
alias la='ls -a'