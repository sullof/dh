#!/bin/bash
# version 0.1, July 12th, 2014
# created by Francesco Sullo, sullof@gmail.com

if [[ $1 == "" ]]; then
	echo "Usage: dh [docker pid]"
	exit
fi

PID=$(docker inspect --format {{.State.Pid}} "$1")
nsenter --target $PID --mount --uts --ipc --net --pid
