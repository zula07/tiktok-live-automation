#!/bin/bash
BOT_TOKEN=""
CHAT_ID=""
MESSAGE="$1"

curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
    -d "chat_id=$CHAT_ID" \
    -d "text=$MESSAGE" > /dev/null
