# cproj Script

`cproj` is the universal project launcher and synchronizer. It ensures that any project can be opened, updated, or created with zero hard-coded values.

## Features

- Auto-detects GitHub username using `gh api`
- Clones existing repositories or creates new ones
- Ensures local and remote branches are synchronized
- Opens the project in VS Code if available
- Runs pre-commit hooks if configured
- Opens the GitHub repo in a browser

## Usage

```bash
cproj <project-name>
```

## Delete a Project

```bash
cproj --delete <project-name>
```

This removes both the local directory and the GitHub repository.
