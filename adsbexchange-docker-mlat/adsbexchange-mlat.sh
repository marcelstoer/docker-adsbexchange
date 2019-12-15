#!/bin/sh
while sleep 30
do
	if ping -q -c 2 -W 5 feed.adsbexchange.com >/dev/null 2>&1
	then
		echo Connected to feed.adsbexchange.com:31090
                echo Feeding from "$INPUT" with MLAT results at "$MLAT_RESULTS"
		mlat-client --input-type dump1090 --input-connect "$INPUT" --lat "$RECEIVER_LATITUDE" --lon "$RECEIVER_LONGITUDE" --alt "$RECEIVER_ALTITUDE" --user "$RECEIVER_NAME" --server feed.adsbexchange.com:31090 --no-udp --results beast,connect,"$MLAT_RESULTS"
		echo Disconnected
	else
		echo Unable to connect to feed.adsbexchange.com, trying again in 30 seconds!
	fi
done
