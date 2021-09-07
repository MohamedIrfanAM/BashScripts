#!/bin/bash

# Opening Whatsapp and google slides in brave
nohup brave-browser "https://web.whatsapp.com/" & nohup brave-browser "https://docs.google.com/presentation/u/0/" &
sleep 1

#DroidCam
nohup droidcam &
sleep 2
xdotool mousemove 369 222
sleep 1
xdotool click 1
sleep 1
xdotool key Shift+Super+Down && sleep 2 &&  xdotool key ctrl+Super+Up
sleep 1

# Opening obs and projecting window preview and resize preview
xdotool key ctrl+b && sleep 3 && xdotool mousemove 676 300 && sleep 2 && xdotool click 3 && sleep 2 && xdotool mousemove 780 414 && sleep 3 && xdotool click 1 && sleep 2 &&  xdotool click 1 && sleep 2 && xdotool key Shift+Super+Down && sleep 2 &&  xdotool key ctrl+Super+Up && wmctrl -r 'Windowed Projector (Preview)' -e '0,0,130,150,83'
