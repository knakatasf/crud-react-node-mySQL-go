#!/bin/bash

URLS=("http://localhost:5173" "http://localhost:3000" "http://localhost")

for URL in "${URLS[@]}"; do
    echo "Testing homepage at: $URL"

    RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" $URL)

    if [ "$RESPONSE" -eq 200 ]; then
        echo "✅ Homepage loaded successfully at $URL!"
        exit 0
    fi
done

echo "❌ Homepage did not load correctly!"
exit 1