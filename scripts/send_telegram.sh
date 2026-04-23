#!/bin/bash
BOT_TOKEN="8664802870:AAEzQD3eZXoP562rgwxLr3bnVm_Zqa7lHJc"
CHAT_ID="1145107881"
MESSAGE="$1"

curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
    -d "chat_id=$CHAT_ID" \
    -d "text=$MESSAGE" > /dev/null
