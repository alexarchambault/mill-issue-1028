#!/usr/bin/env bash
set -e

./clean.sh
exec ./mill -i -j 16 -d show __.resolvedIvyDeps
