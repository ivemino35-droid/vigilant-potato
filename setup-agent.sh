#!/bin/bash

# Configuration
PROJECT_DIR="ubuntu-pools-agent"
DOCS_DIR="docs"
MD_FILE="replit.md"

# Create directories
mkdir -p "$PROJECT_DIR"

# Copy essential files if they exist
[ -f "$MD_FILE" ] && cp "$MD_FILE" "$PROJECT_DIR/"
[ -d "$DOCS_DIR" ] && cp -r "$DOCS_DIR" "$PROJECT_DIR/"

# Create a status file
cat <<EOT > "$PROJECT_DIR/status.txt"
Ubuntu Pools Agent Setup
Date: $(date)
Status: Initialized
EOT

echo "Agent directory '$PROJECT_DIR' has been created and initialized."
