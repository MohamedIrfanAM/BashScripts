#!/usr/bin/env zsh


pids=$(xdotool search --class "brave-browser")
pid=`echo "${pids}" | head -1`

echo "Auto Browsing on pid-${pid}"
echo "Press [CTRL+C] to stop.."

xdotool windowfocus $pid
while :
do

  xdotool mousemove --window $pid 190 500
  sleep 1
  xdotool click --window $pid 1
  sleep 3

  for (( i=1; i<=90; i++ ))
  do
    for (( j=1; j<=$(($RANDOM%10)); j++ ))
    do 
      for (( k=1; k<=10; k++ ))
      do 
        xdotool click --window $pid 4
        sleep 0.01
      done
    done

    random_x=$(($RANDOM%1200))
    random_y=$(($RANDOM%700))
    xdotool mousemove --window $pid $random_x $(($random_y > 80 ? $random_y : 80))
    sleep 5

    for (( j=1; j<=$(($RANDOM%10)); j++ ))
    do 
      for (( k=1; k<=10; k++ ))
      do 
        xdotool click --window $pid 5
        sleep 0.01
      done
    done

    random_x=$(($RANDOM%1200))
    random_y=$(($RANDOM%700))
    xdotool mousemove --window $pid $random_x $(($random_y > 80 ? $random_y : 80))
    sleep 5
  done

  xdotool key --window $pid ctrl+w
  sleep 1

done
