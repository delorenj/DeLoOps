#!/bin/bash

# Configuration
OPENGIST_SERVER="https://delo.sh"
GIST_ID="delorenj"
API_TOKEN="your-api-token"

# Function to fetch gist content
fetch_gist() {
    # Basic fetch without authentication
    if [ -z "$API_TOKEN" ]; then
        curl -s "${OPENGIST_SERVER}/api/v1/gists/${GIST_ID}" \
            -H "Accept: application/json"
    else
        # Fetch with authentication token
        curl -s "${OPENGIST_SERVER}/api/v1/gists/${GIST_ID}" \
            -H "Accept: application/json" \
            -H "Authorization: token ${API_TOKEN}"
    fi
}

# Function to extract file contents from response
get_file_contents() {
    # Use jq to parse JSON and get file contents
    # Note: Requires jq to be installed
    fetch_gist | jq -r '.files[].content'
}

# Main execution
if ! command -v jq &> /dev/null; then
    echo "Error: jq is required but not installed"
    echo "Install it using your package manager (e.g., 'apt install jq' or 'brew install jq')"
    exit 1
fi

get_file_contents
