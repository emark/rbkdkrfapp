#!/usr/bin/bash

if [ "$1" = "stop" ]; then
	echo "Start destroy an application..."
	docker compose -f app.compose.yml up -d
else
	echo "Start create an application..."
	docker compose -f app.compose.yml up -d
fi

echo "...complete"
