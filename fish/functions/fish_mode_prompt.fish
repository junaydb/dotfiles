function fish_mode_prompt
  switch $fish_bind_mode
    case default
      set_color -d -o cyan 
      echo '(n) '
    case insert
      set_color -d -o blue 
      echo '(i) '
    case replace_one 
      set_color -d -o green 
      echo '(r) '
    case visual 
      set_color -d -o magenta 
      echo '(v) '
    case '*' 
      set_color -d -o red 
      echo '(?) '
    end
    set_color normal
end
