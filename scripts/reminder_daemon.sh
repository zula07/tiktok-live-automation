#!/bin/bash
while true; do
  current_time=$(date +%H:%M)
  if [ "$current_time" == "08:58" ]; then
    /root/.openclaw/workspace/scripts/send_telegram.sh "İlacını içmeyi unutma!"
    sleep 60
  fi
  sleep 10
done
