#!/bin/sh

app_name=$1
template=`dirname $0`/Dockerfile.template
timestamp=`date "+%Y-%m-%dT%H:%M:%S"`

cat $template \
  | sed -e s/\$\{APP_NAME\}/$app_name/g \
  | sed -e s/\$\{TIMESTAMP\}/$timestamp/g

