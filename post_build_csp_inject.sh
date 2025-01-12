#!/bin/bash

# Define variables
BUILD_DIR="build/web"
BUILD_INDEX_FILE="$BUILD_DIR/index.html"

# Define the updated CSP meta tag
CSP_META_TAG='<meta http-equiv="Content-Security-Policy" content="default-src '\''self'\''; script-src '\''self'\'' '\''wasm-unsafe-eval'\'' https://www.gstatic.com/flutter-canvaskit/; style-src '\''self'\'' '\''unsafe-inline'\''; connect-src '\''self'\''; object-src '\''none'\'';">'

# Check if the build index.html exists
if [ -f "$BUILD_INDEX_FILE" ]; then
    # Insert the CSP meta tag into the <head> section
    sed -i "/<head>/a $CSP_META_TAG" "$BUILD_INDEX_FILE"
    echo "CSP meta tag injected into $BUILD_INDEX_FILE"
else
    echo "Error: $BUILD_INDEX_FILE not found. Did you run 'flutter build web'?"
    exit 1
fi
