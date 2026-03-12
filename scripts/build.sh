#!/bin/bash

set -e

echo "Installing Flutter..."

git clone https://github.com/flutter/flutter.git --depth 1 -b stable /vercel/flutter

export PATH="/vercel/flutter/bin:$PATH"

# ✅ Required for CI environments like Vercel
export CI=true

# ✅ Fix git safe directory issue
git config --global --add safe.directory /vercel/flutter

echo "Flutter Version:"
flutter --version

# ✅ Disable analytics (prevents CI crash)
flutter config --no-analytics

# ✅ Enable web
flutter config --enable-web

# ✅ Download required artifacts BEFORE build
flutter precache --web

echo "Getting packages..."
flutter pub get

echo "Building Flutter Web..."
flutter build web --release

echo "Build completed!"