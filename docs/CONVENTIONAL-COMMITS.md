# Conventional Commits Guide

This document explains the commit message convention used in this project template for consistency and clarity.

Reference: https://www.conventionalcommits.org/en/v1.0.0/

---

## Commit Message Structure

```
<type>(optional-scope): <short description>

[optional body]

[optional footer]
```

- `type`: The category of the change.
- `scope`: The part of the project affected (optional).
- `short description`: Concise summary of the change.

---

## Allowed Commit Types

| Type     | Usage                                                    |
| -------- | -------------------------------------------------------- |
| feat     | New feature                                              |
| fix      | Bug fix                                                  |
| chore    | Maintenance or non-functional tasks                      |
| docs     | Documentation updates                                    |
| style    | Formatting, missing semi colons, etc. (no code change)   |
| refactor | Code changes that neither fixes a bug nor adds a feature |
| test     | Adding or updating tests                                 |
| ci       | CI/CD configuration changes                              |

---

## Commit Examples

```
feat(auth): add login with Google

fix(products): prevent crash when product name is null

docs(readme): update branch strategy guide

style(home): fix indentations and remove console.log

refactor(user-service): clean unused methods

chore(deps): update express to v4.18.2

test(api): add tests for order controller

ci(github-actions): add deployment workflow
```

---

## Additional Guidelines

- Keep the subject line concise.
- Use imperative mood in the subject line.
- Use English for all commits.
- Optionally, add more details in the body.
- To reference an issue:

```
Closes #23
```

---

By following this guide, the commit history remains clean, informative, and consistent.
