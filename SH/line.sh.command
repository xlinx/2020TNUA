#!/bin/sh

TECHART='u3NwejvYCLVb3YujVdYUTXonN7fD8oj3j0DK2EUujh3'
STICKID=0

while [ true ]; do
	
	curl -X POST https://notify-api.line.me/api/notify -H 'Authorization: Bearer '$TECHART  -F "message=${1}" -F "stickerPackageId=11537" -F "stickerId=1"
	#curl -X POST https://notify-api.line.me/api/notify -H 'Authorization: Bearer '$TECHART -F "message=${1}" -F "imageFile=@/Users/xlinx/Pictures/337863.jpg"
	sleep 10
done