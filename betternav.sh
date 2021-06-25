fz() 
{
  filepath=$(fd -H . | fzf); 
  if [ -d $filepath ]; then
    cd $filepath; 
    # z $filepath
  else
    # nvim $filepath
    xdg-open $filepath
    # o $filepath
  fi
  cd -
  
}

function mkcd {
  last=$(eval "echo \$$#")
  if [ ! -n "$last" ]; then
    echo "Enter a directory name"
  elif [ -d $last ]; then
    echo "\`$last' already exists"
  else
    mkdir $@ && cd $last
  fi
}

cdls() {
        local dir="$1"
        local dir="${dir:=$HOME}"
        if [[ -d "$dir" ]]; then
                cd "$dir" >/dev/null; exa -l --color=always --group-directories-first 
        else
                echo "bash: cdls: $dir: Directory not found"
        fi
}

