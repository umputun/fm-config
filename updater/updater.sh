#!/bin/sh
# this script runs outside of container, on host

cd /srv/feed-master

git fetch
LOCAL=$(git rev-parse HEAD)
REMOTE=$(git rev-parse @{u})

if [ $LOCAL != $REMOTE ]; then
    echo "$(date) git update detected"
    git pull origin master
    docker-compose restart feed-master
    echo "$(date) update completed"
fi
