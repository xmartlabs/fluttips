#!/bin/bash
error () {
  echo -e "\033[0;31m$1"
  exit 1
}

echo ':: Check code format ::'
fvm dart format --set-exit-if-changed . || error "Invalid format"

echo ':: Run linter ::'
fvm flutter analyze . || error "Linter error"
