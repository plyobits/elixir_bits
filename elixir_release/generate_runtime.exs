#!/bin/sh

app=$1
root_context=$2
template=`dirname $0`/runtime.exs.template

cat $template \
  | sed -e s/\$\{APP\}/$app/g \
  | sed -e s/\$\{ROOT_CONTEXT\}/$root_context/g

