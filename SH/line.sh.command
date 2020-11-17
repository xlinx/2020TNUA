#!/bin/sh

TECHART='u3NwejvYCLVb3YujVdYUTXonN7fD8oj3j0DK2EUujh3'
STICKID=0

for i in $(find /mnt/c/ -name "*.jpg"); do 
	process "$i"
	curl -X POST https://notify-api.line.me/api/notify -H 'Authorization: Bearer '$TECHART -F "message=${1}" -F "imageFile=@$i"
	sleep 1
done