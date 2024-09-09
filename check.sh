#!/usr/bin/env bash
set -e

./clean.sh
export COURSIER_CACHE="$(pwd)/coursier-cache"
exec ./mill -i -j 16 -d __.resolvedIvyDeps
