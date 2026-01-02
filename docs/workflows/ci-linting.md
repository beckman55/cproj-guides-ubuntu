# CI Linting Workflow

This repository includes a GitHub Actions workflow that:

- Runs ShellCheck on all scripts
- Ensures scripts are executable
- Performs basic dry-run tests

The workflow runs on:

- Every push to `main`
- Every pull request
