#!/bin/bash

eval $(xdotool getmouselocation --shell)
declare -i y
y=$Y
count=1

while true
do

  echo "Press Ctrl+C to Stop"

  xdotool mousemove 637 $y
  xdotool click 1
  xdotool mousemove 637 $((y-115))
  xdotool click 1
  xdotool mousemove 637 730
  xdotool click 1

  i=1
  while [ $i -le 5 ]
  do
    j=$count
    while [ $j -gt 0 ]
    do
      xdotool key Down
      ((j--))
      sleep 0.05
    done
    xdotool key Return
    sleep 0.05
    ((i++))
    ((count++))
  done
  xdotool mousemove 495 622
  # xdotool click 1
  sleep 1

done
