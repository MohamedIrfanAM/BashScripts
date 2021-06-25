#! /bin/bash

function add()
{
counter=1
while read email; do
  echo "$counter:$email"
  copyq copy $email >/dev/null
  xdotool key alt+Tab; sleep 0.65; xdotool key ctrl+v ; sleep 0.65; xdotool key Return ; sleep 0.65; xdotool key alt+Tab
 counter=$((counter+1)) 
 echo "Done"
done < ~/Documents/gmails/$1
}
