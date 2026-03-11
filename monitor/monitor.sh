#!/bin/bash

SERVERS=("8.8.8.8" "1.1.1.1" "github.com" "google.com" "youtube.com")

# Fichier log
LOG_FILE="/data/server_status.log"
mkdir -p /data

echo "Démarrage du monitoring serveur..."
while true; do
    DATE=$(date +"%Y-%m-%d %H:%M:%S")
    for SERVER in "${SERVERS[@]}"; do
        ping -c 1 $SERVER &> /dev/null
        if [ $? -eq 0 ]; then
            STATUS="UP"
        else
            STATUS="DOWN"
        fi
        echo "$DATE | $SERVER | $STATUS" >> $LOG_FILE
        echo "$DATE | $SERVER | $STATUS"
    done
    sleep 10
done