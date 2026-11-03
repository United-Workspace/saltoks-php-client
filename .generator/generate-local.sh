#!/usr/bin/env bash

# Local SDK Generator Runner for Salto KS
# Delegates to the central openapi-sdk-builder

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILDER_CLI="../openapi-sdk-builder/bin/generate.sh"

if [ -f "$BUILDER_CLI" ]; then
    echo "Running central OpenAPI SDK Builder CLI..."
    "$BUILDER_CLI" \
        --target-dir="$SCRIPT_DIR" \
        --lang=php \
        --version=v7.13.0 \
        --skip-validate \
        "$@"
else
    echo "Using Docker (openapitools/openapi-generator-cli:v7.13.0)..."
    CONFIG_FILE=".generator/openapi-config.json"
    SWAGGER_URL=$(jq -r '.swaggerUrl' "$CONFIG_FILE")
    curl -s "$SWAGGER_URL" -o .generator/swagger.json
    
    mkdir -p .generator/generated-client
    docker run --rm \
        -u "$(id -u):$(id -g)" \
        -v "$SCRIPT_DIR:/local" \
        openapitools/openapi-generator-cli:v7.13.0 generate \
        -i /local/.generator/swagger.json \
        -g php \
        -c /local/.generator/openapi-config.json \
        -o /local/.generator/generated-client \
        --skip-validate-spec
        
    mkdir -p lib docs test
    cp -R .generator/generated-client/lib/. lib/ || true
    cp -R .generator/generated-client/docs/. docs/ || true
    cp -R .generator/generated-client/test/. test/ || true
    cp .generator/generated-client/README.md API_README.md || true
    rm -rf .generator/generated-client
    echo "✅ Local generation complete."
fi
