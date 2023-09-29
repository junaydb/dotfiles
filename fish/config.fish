# clear the screen and scroll-back buffer
function cl
	clear
	printf '\033[3J'
end

fish_vi_key_bindings

alias lsa='ls -A'
alias vim='nvim'
alias gcc='gcc-13'
alias cpp='cpp-13'
alias g++='g++-13'

set -g theme_color_scheme dracula
set -g theme_display_git_default_branch yes
set -g fish_cursor_default block

# pnpm
set -gx PNPM_HOME "/Users/junayd/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
