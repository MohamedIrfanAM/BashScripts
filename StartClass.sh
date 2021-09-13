#!/bin/bash

# Opening google slides in brave
nohup brave-browser "https://docs.google.com/presentation/u/0/" &
sleep 1

#DroidCam
if adb devices | grep 2f1d626b ; then
nohup droidcam &
sleep 2
xdotool mousemove 369 222
sleep 1
xdotool click 1
sleep 3
xdotool key Shift+Super+Down && sleep 2 &&  xdotool key ctrl+Super+Up
sleep 1
droidcamon=1
else
droidcamon=0
fi

# Opening obs and projecting window preview and resize preview
xdotool key ctrl+b && sleep 3 && xdotool mousemove 676 300 && sleep 2 && xdotool click 3 && sleep 2 && xdotool mousemove 780 414 && sleep 2 && xdotool click 1 && sleep 2 &&  xdotool click 1 && sleep 2 && xdotool key Shift+Super+Down && sleep 2 &&  xdotool key ctrl+Super+Up && wmctrl -r 'Windowed Projector (Preview)' -e '0,0,130,150,83'

# Opening Whatsapp and making it a seperate window
nohup brave-browser "https://web.whatsapp.com/" &
sleep 2
xdotool mousemove 346 43
sleep 1
xdotool mousedown 1
sleep 1
xdotool mousemove 248 173
sleep 1
xdotool mouseup 1

# Showing or Hiding Camera based on droidcam state
if [ $droidcamon -eq 1 ]
then
xdotool keydown ctrl ; xdotool keydown z; sleep 1 ;xdotool keyup ctrl; xdotool keyup z
else
xdotool keydown ctrl ; xdotool keydown x; sleep 1 ;xdotool keyup ctrl; xdotool keyup x
fi
