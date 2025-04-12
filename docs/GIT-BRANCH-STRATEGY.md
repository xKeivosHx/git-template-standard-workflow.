# Git Branch Strategy Guide

This document explains the branch strategy used in this project template and how to work with local and remote branches properly.

---

## Branch Types

### Local Branches

Branches you have checked out and are working on in your local machine.

List local branches:

```bash
git branch
```

Example output:

```
* development
  production
  testing
```

---

### Remote Branches

Branches that exist in the remote repository (GitHub).

List remote branches:

```bash
git branch -r
```

Example output:

```
origin/HEAD -> origin/development
origin/development
origin/production
origin/testing
```

---

## HEAD Explanation

- `origin/HEAD -> origin/development` indicates that when cloning the repository, Git will default to `development` branch.

---

## Detached HEAD State

A detached HEAD means you are not on a branch but on a specific commit or a symbolic reference like `origin/HEAD`.

Exit from detached HEAD:

```bash
git checkout development
```

or any valid local branch.

---

## Best Practices for Branch Workflow

| Branch      | Purpose                                         |
| ----------- | ----------------------------------------------- |
| development | Main development branch                         |
| testing     | Staging/QA branch                               |
| production  | Production-ready code                           |
| feature/\*  | Feature development branches                    |
| hotfix/\*   | Urgent bugfix branches (direct from production) |

---

## Cleaning Unnecessary Local Branches

To delete a local branch:

```bash
git branch -d branch-name
```

Force delete (if not merged):

```bash
git branch -D branch-name
```

---

## Cleaning Remote Branches

To delete a remote branch:

```bash
git push origin --delete branch-name
```

---

## Additional Commands

Fetch all updates from remote:

```bash
git fetch --all
```

Set HEAD to point to development explicitly:

```bash
git remote set-head origin development
```

---

This guide ensures that you and your team follow a clean and structured workflow using Git.
