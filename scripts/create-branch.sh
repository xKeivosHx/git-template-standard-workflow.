---

## create-branch.sh

```bash
#!/bin/bash

# Script to create feature or hotfix branches
# Usage:
# bash scripts/create-branch.sh feature branch-name
# bash scripts/create-branch.sh hotfix branch-name

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 [feature|hotfix] branch-name"
  exit 1
fi

TYPE=$1
NAME=$2

# Validate allowed types
if [ "$TYPE" != "feature" ] && [ "$TYPE" != "hotfix" ]; then
  echo "Invalid branch type. Only 'feature' or 'hotfix' allowed."
  exit 1
fi

BRANCH="$TYPE/$NAME"

git checkout development
git pull
git checkout -b $BRANCH
git push -u origin $BRANCH

echo "Branch created: $BRANCH"