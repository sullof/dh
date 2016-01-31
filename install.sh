#!/bin/bash

is=$(which nsenter)
if [[ $is == "" ]]
then
  docker run -v /usr/local/bin:/target jpetazzo/nsenter
fi

if [[ ! -f "dh.sh" ]]
then
  curl -sSL https://raw.githubusercontent.com/sullof/dh/master/dh.sh > dh
  chmod +x dh
  mv dh /usr/local/bin/dh
else
  chmod +x dh.sh
  cp dh.sh /usr/local/bin/dh
fi

