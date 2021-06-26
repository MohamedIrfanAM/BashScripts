#!/bin/bash
date > /home/semeeha/Upload/upload_status.txt
echo "---------------------------------" >> /home/semeeha/Upload/upload_status.txt
counter=0
uploaded=0
nmcli con up id "M Network" &> /dev/null
mv /home/semeeha/*mp4 /home/semeeha/Upload/ &> /dev/null
ls /home/semeeha/Upload/*mp4 &> /dev/null

if [ $? -ne 0 ]; then
        echo "No Videos Available to Upload" >> /home/semeeha/Upload/upload_status.txt
else
        echo "Videos Found, Uploading Started" >> /home/semeeha/Upload/upload_status.txt
        for video in /home/semeeha/Upload/*mp4
        do 
                /home/semeeha/Upload/.src/youtubeuploader_linux_amd64 -description "Heavens Preschool Vatanappally" -filename "${video}" && rm "${video}" && echo "${video} uploaded" >> /home/semeeha/Upload/upload_status.txt && uploaded=$((uploaded+1)) || echo "can't upload ${video}" >> /home/semeeha/Upload/upload_status.txt
                counter=$((counter+1))
        done
fi

if [ $uploaded -eq $counter ]; then
        echo "All Videos Uploaded, Powering off the system" >> /home/semeeha/Upload/upload_status.txt
else
        echo "Errors occured, couldn't upload some videos" >> /home/semeeha/Upload/upload_status.txt
fi
echo "---------------------------------" >> /home/semeeha/Upload/upload_status.txt
date >> /home/semeeha/Upload/upload_status.txt
