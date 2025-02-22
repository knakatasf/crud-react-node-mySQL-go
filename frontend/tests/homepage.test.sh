#!/bin/bash

URL="http://localhost:5173"

RESPONSE=$(curl -s $URL)

if echo "$RESPONSE" | grep -q "<title>Vite + React</title>"; then
    echo "✅ Homepage loaded successfully!"
    exit 0
else
    echo "❌ Homepage did not load correctly!"
    exit 1
fi