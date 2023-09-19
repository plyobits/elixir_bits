#!/bin/sh
set -e

ELIXIR_VERSION=${1:-"1.15.5"}

URL="https://github.com/elixir-lang/elixir/archive/v${ELIXIR_VERSION}.tar.gz" 
curl -fSL -o elixir-src-${ELIXIR_VERSION}.tar.gz $URL

