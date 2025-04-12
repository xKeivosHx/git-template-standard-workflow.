#!/bin/bash

# Usage:
# bash scripts/init-new-project.sh git@github.com:xKeivosHx/git-template-standard-workflow.git project-name

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <git-template-url> <new-project-name>"
  exit 1
fi

TEMPLATE_REPO=$1
NEW_PROJECT=$2

# Clone the template repo
git clone $TEMPLATE_REPO $NEW_PROJECT

cd $NEW_PROJECT || exit

# Remove git history
rm -rf .git

# Initialize new git repo
git init
git add .
git commit -m "Initial commit from template"

echo "New project '$NEW_PROJECT' created and ready to use."

echo "Next steps:"
echo "cd $NEW_PROJECT"
echo "git remote add origin <your-new-repo-url>"
echo "git push -u origin development"
echo "git push origin testing"
echo "git push origin production"