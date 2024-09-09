#!/usr/bin/env bash
set -e

./clean.sh
export COURSIER_CACHE="$(pwd)/coursier-cache"
exec "$HOME/projects/mill/out/dev/assembly.dest/mill" -i -j 16 -d __.resolvedIvyDeps
# exec ./mill -i -j 16 -d __.resolvedIvyDeps
