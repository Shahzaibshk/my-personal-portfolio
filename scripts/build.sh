# #!/bin/bash

# # Install Flutter
# git clone https://github.com/flutter/flutter.git --depth 1 -b stable
# export PATH="$PATH:`pwd`/flutter/bin"

# flutter doctor
# flutter config --enable-web

# flutter pub get
# flutter build web


#!/bin/bash

set -e  # stop on error

echo "Installing Flutter..."

git clone https://github.com/flutter/flutter.git --depth 1 -b stable $HOME/flutter

export PATH="$PATH:$HOME/flutter/bin"

flutter --version
flutter config --enable-web

echo "Getting packages..."
flutter pub get

echo "Building Flutter Web..."
flutter build web --release

echo "Build completed!"