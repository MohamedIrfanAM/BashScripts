# /bin/bash
mv /home/semeeha/*mp4 /home/semeeha/Upload/
ls /home/semeeha/Upload/*mp4
if [ $? -ne 0 ]; then
	clear
	echo "No Videos Available to Upload"
else
	clear
	videos=$(find /home/semeeha/Upload/*mp4) 
	for video in "$videos"
	do 
		/home/semeeha/Upload/.src/youtubeuploader_linux_amd64 -description "Heavens Preschool Vatanappally" -filename $video
	done
fi
