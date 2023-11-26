#!/usr/bin/env bash
# Script that writes "I am alive!" to /tmp/my_process every 2 seconds

case "$1" in
    start)
        echo "manage_my_process started"
        /tmp/my_process.sh &
        echo $! > /var/run/my_process.pid
        ;;
    stop)
        echo "manage_my_process stopped"
        kill $(cat /var/run/my_process.pid)
        rm /var/run/my_process.pid
        ;;
    restart)
        echo "manage_my_process restarted"
        kill $(cat /var/run/my_process.pid)
        rm /var/run/my_process.pid
        /tmp/my_process.sh &
        echo $! > /var/run/my_process.pid
        ;;
    *)
        echo "Usage: $0 {start|stop|restart}"
        exit 1
        ;;
esac

exit 0
