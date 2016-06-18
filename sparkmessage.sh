#!/bin/bash

#Created by paglanz@cisco.com
#Simple bash script to send a text message to a cisco spark room.
#Requirements: Basic Linux distribution (debian/ubuntu/fedora/centos whatever) plus curl installed.
#The script itself takes the message content as a command line parameter. Once you changed the script to be executable (chmod 755 sparkmessage.sh)
#and adjusted your access token plus room ID, simply run the script like this: ./sparkmessage.sh "Hello World"
#check  listrooms.sh on how to obtain access token plus room ID. Happy sparking!

accesstoken="your_access_token_here"
roomId="your_room_id_here"

curl https://api.ciscospark.com/v1/messages -X POST -H "Authorization:Bearer $accesstoken" --data "roomId=$roomId" --data "text=$1"
