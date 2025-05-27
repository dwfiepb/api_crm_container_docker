#!/bin/bash

# Ensure GitHub token is available
if [ -z "$GITHUB_TOKEN" ]; then
  echo "GITHUB_TOKEN is not set."
  exit 1
fi

# Clean and clone the latest code
rm -rf app/
git clone https://$GITHUB_TOKEN@github.com/dwfiepb/api_crm.git app