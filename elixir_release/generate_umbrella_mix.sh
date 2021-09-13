#!/bin/sh

app=$1
template=`dirname $0`/mix.exs.template

cat $template \
  | sed -e s/\$\{APP\}/$app/g \

