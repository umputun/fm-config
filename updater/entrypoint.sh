#!/bin/sh
echo "$(date) start updater"

while true; do
    sleep 10
    ssh umputun@172.17.42.1 "/srv/feed-master/updater/updater.sh"
done
