#!/bin/bash
now=$(date +"%T")
str1="17:08:00"
while :
do
	now=$(date +"%T")
	if [[ "$now" == "$str1" ]]; then
		break
	fi
done
sleep 4
sudo timeout --signal=SIGINT 40 ./ffplay -i http://10.0.0.2:8080 -report > rawr.txt
sudo ./ffprobe output.mp4 >> rawr.txt
