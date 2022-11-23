#!/bin/bash

cp $1/google-services.json android/app/
mkdir -p ios/Runner/Resources/Firebase
cp $1/GoogleService-Info-dev.plist ios/Runner/Resources/Firebase/
cp $1/GoogleService-Info-prod.plist ios/Runner/Resources/Firebase/
