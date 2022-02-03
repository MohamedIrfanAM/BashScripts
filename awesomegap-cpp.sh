! /bin/zsh
if grep -q "while(tst--)" $1
then
  if [ $2 -eq 1 ]
  then
    awesome-client 'require("awful").screen.focused().selected_tag.gap = 2'
  else
    awesome-client 'require("awful").screen.focused().selected_tag.gap = 0'
  fi
fi
