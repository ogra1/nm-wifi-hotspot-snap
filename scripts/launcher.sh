#! /bin/sh

SLEEP="$(snapctl get delay)"
[ -n "$SLEEP" ] || SLEEP=15

logger -t "$SNAP_NAME" "Delaying startup by $SLEEP seconds"
# delay our startup to make sure network-manager
# is up for sure ...
sleep $SLEEP

logger -t "$SNAP_NAME" "Delay over. starting ..."
exec $SNAP/bin/wifi-hotspot wlan0 up
