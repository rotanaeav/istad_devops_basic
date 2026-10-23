#!/bin/bash

# Get the root of the git repository
ROOT=$(git rev-parse --show-toplevel)
if [ $? -ne 0 ]; then
    echo "Error: Not a git repository. Exiting."
    exit 1
fi

# Change to the root directory
cd "$ROOT" || { echo "Failed to change to repository root: $ROOT"; exit 1; }

# Add all changes
git add .

# Prompt for commit message
echo -n "Enter commit message: "
read COMMIT_MSG

# Commit
if ! git commit -m "$COMMIT_MSG"; then
    echo "Commit failed. No changes to commit?"
    exit 1
fi

# Push
git push