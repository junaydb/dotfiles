# name: eclm
function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function fish_prompt
  set -l last_status $status
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o F53F3F)
  set -l purple (set_color -o 743BBF)
  set -l green (set_color -o 2EE668)
  set -l normal (set_color -o 389EF5)

  if test $last_status = 0
      set status_indicator "$green 󱦰 "
  else
      set status_indicator "$red 󱦰 "
  end
  set -l cwd $normal(basename (prompt_pwd))

  if [ (_git_branch_name) ]

    if test (_git_branch_name) = 'master'
      or test (_git_branch_name) = 'main'
      set -l git_branch (_git_branch_name)
      set git_info "$purple git:($red$git_branch$purple)"
    else
      set -l git_branch (_git_branch_name)
      set git_info "$purple git:($green$git_branch$purple)"
    end

    if [ (_is_git_dirty) ]
      set -l dirty "$yellow ✗"
      set git_info "$git_info$dirty"
    end
  end

  echo -n -s $status_indicator $cwd $git_info $normal ' '
end
