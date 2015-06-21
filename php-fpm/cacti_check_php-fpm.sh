#! /bin/bash

host=$1
port=$2
url=$3
curl -s http://${host}:${port}${url} | awk  '{if ( $1 == "accepted" ) conn=$3
else if ( $1 == "idle" ) idle=$3
else if ( $1 == "active" ) active=$3
else if ( $1 == "total" ) total=$3
else true=0
} END {print "conn:"conn,"idle:"idle,"active:"active,"total:"total}'
