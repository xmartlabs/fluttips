#!/bin/bash
error () {
  echo -e "\033[0;31m$1"
  exit 1
}

echo ':: Sorting translation files ::'

fvm flutter pub run arb_utils sort lib/l10n/intl_en.arb;

echo ':: Check code format ::'
fvm dart format --set-exit-if-changed . || error "Invalid format"

echo ':: Run linter ::'
fvm flutter analyze . || error "Linter error"

result=$(fvm flutter pub run dart_code_metrics:metrics analyze lib  --fatal-style --fatal-performance --fatal-warnings)
[[ $result == *'✔ no issues found!'* ]] || error "Linter error"

fvm flutter pub run dart_code_metrics:metrics check-unused-code lib --fatal-unused || error "Linter error"

fvm flutter pub run dart_code_metrics:metrics check-unused-files lib --fatal-unused --exclude=lib/gen/assets.gen.dart || error "Linter error"
