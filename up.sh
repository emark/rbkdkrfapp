#!/usr/bin/bash

if [ "$1" = "stop" ]; then
	echo "Start destroy an application..."
	docker compose -f app.compose.yml -p rbmdkrfinalapp down
	docker compose -f efk.compose.yml -p rbmdkrfinalefk down
else
	echo "Start create an application..."
	docker compose -f efk.compose.yml -p rbmdkrfinalefk up -d
	docker compose -f app.compose.yml -p rbmdkrfinalapp up -d
fi

echo "...complete"
