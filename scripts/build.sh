#!/bin/bash

set -e

echo "Installing Flutter..."

git clone https://github.com/flutter/flutter.git --depth 1 -b stable $HOME/flutter

export PATH="$PATH:$HOME/flutter/bin"

# ✅ Allow running as root (REQUIRED for Vercel)
export CI=true

flutter --version
flutter config --enable-web

echo "Getting packages..."
flutter pub get

echo "Building Flutter Web..."
flutter build web --release

echo "Build completed!"