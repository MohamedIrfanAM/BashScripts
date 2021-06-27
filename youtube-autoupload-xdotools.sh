#!/bin/bash

xdotool mousemove 20 20
sleep 2
xdotool mousemove 100 100
sleep 2

mv /home/semeeha/*.mp4 /home/semeeha/Documents/Upload/ &> /dev/null
ls /home/semeeha/Documents/Upload/*mp4 &> /dev/null
if [ $? -eq 0 ]; then

        nohup brave-browser &
        sleep 5
        xdotool type "https://studio.youtube.com/channel/UCh7yKEOwgIY5Qh2NDTUxDYw/videos/upload?d=ud&filter=%5B%5D&sort=%7B%22columnType%22%3A%22date%22%2C%22sortOrder%22%3A%22DESCENDING%22%7D"
        xdotool key Return
        sleep 20
        xdotool mousemove 684 555
        xdotool click 1
        sleep 5
        xdotool type "/home/semeeha/Documents/Upload/"
        xdotool key Return
        sleep 2
        xdotool key ctrl+a
        sleep 1
        xdotool key Return

fi
