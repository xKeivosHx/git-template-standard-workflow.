# Git Template - Standard Workflow

This repository is a universal base template designed for any project (Node.js, Python, Java, PHP, etc.) with a clear and organized branching workflow.

---

## Branch structure

| Branch      | Purpose                                          |
| ----------- | ------------------------------------------------ |
| production  | Production-ready and stable code.                |
| testing     | Code ready for QA / Staging environment.         |
| development | Daily integration of new features.               |
| feature/\*  | Development of specific new functionalities.     |
| hotfix/\*   | Urgent bug fixes applied directly to production. |

---

## Workflow

### Create a new feature

```bash
git checkout development
git pull
git checkout -b feature/your-feature-name
```

When finished:

```bash
git add .
git commit -m "feat: description"
git push
```

Merge feature into development:

```bash
git checkout development
git pull
git merge feature/your-feature-name
git push
```

---

### Prepare release for QA

Merge development into testing:

```bash
git checkout testing
git pull
git merge development
git push
```

---

### Deploy to production

Merge testing into production:

```bash
git checkout production
git pull
git merge testing
git push
```

---

## Useful Scripts

### Create feature or hotfix branches easily

Located in `/scripts/create-branch.sh`

Usage:

```bash
bash scripts/create-branch.sh feature your-feature-name
bash scripts/create-branch.sh hotfix your-hotfix-name
```

Example:

```bash
bash scripts/create-branch.sh feature login-api
bash scripts/create-branch.sh hotfix error-on-production
```

---

## Suggested folder structure

```
git-template-standard-workflow/
├── src/        → Source code
├── docs/       → Documentation (optional)
├── scripts/    → Useful scripts
│   └── create-branch.sh
├── .gitignore  → Ignore file
├── README.md   → This file
└── LICENSE     → MIT License
```

---

## License

MIT License
