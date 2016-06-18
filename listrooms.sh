#!/bin/bash

#Created by paglanz@cisco.com
#This bash script will list the details on all cisco spark rooms , including the room IDs (Which you will need in order to run sparkmessage.sh) 
#To obtain your access token, go to http://developer.ciscospark.com, sign in with your Spark account and click on your avatar in the upper right corner.
#This will reveal your access token. Simply copy&paste to replace the dummy token below. 
#Make the script executable: chmod 755 listrooms.sh, run the script ./listrooms.sh and take note of the room id you want to post your spark messages to and edit sparkmessage.sh accordingly.

accesstoken="your_access_token_here"

curl https://api.ciscospark.com/v1/rooms?showSipAddress=true -X GET -H "Authorization:Bearer $accesstoken" 

