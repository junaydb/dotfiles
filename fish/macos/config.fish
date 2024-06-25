# enable vim bindings
fish_vi_key_bindings

# aliases
alias lsa='ls -A'
alias vim='nvim'
alias gcc='gcc-13'
alias cpp='cpp-13'
alias g++='g++-13'

# blinking block cursor 
set fish_vi_force_cursor
set fish_cursor_default block blink
set fish_cursor_insert block blink

# pyenv
pyenv init - | source

# pnpm
set -gx PNPM_HOME "/Users/junayd/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
