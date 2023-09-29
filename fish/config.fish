fish_vi_key_bindings

alias lsa='ls -A'
alias vim='nvim'
alias gcc='gcc-13'
alias cpp='cpp-13'
alias g++='g++-13'

set fish_vi_force_cursor
set -U theme_color_scheme dracula
set -U theme_display_git_default_branch yes
set -U fish_cursor_default block blink
set -U fish_cursor_insert block blink

# pnpm
set -gx PNPM_HOME "/Users/junayd/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
