#!/bin/sh
HOST=$(cat /etc/nginx/conf.d/default.conf |grep server_name |awk '{print $2}' |sed 's/;//')
PORT=$(cat /etc/nginx/conf.d/default.conf |grep listen |head -n1 |awk '{print $2}' |sed 's/;//')
if [ "$PORT" = 80 ]
	then
	PORT=
else
	PORT=:$PORT
fi
/usr/local/bin/fiche -o /usr/share/nginx/html -d $HOST$PORT -s 8 -l /usr/share/nginx/html/fiche.log &
