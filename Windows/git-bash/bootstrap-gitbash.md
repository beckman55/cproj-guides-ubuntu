# Git Bash Bootstrap (Most Compatible)

This is the simplest and most compatible way to use the automation toolkit on Windows.

## Requirements
- Git for Windows (includes Git Bash)
- GitHub CLI for Windows

## Bootstrap Command

Open **Git Bash** and run:

```bash
mkdir -p "$HOME/dev/projects" && \
cd "$HOME/dev/projects" && \
git clone https://github.com/<your-username>/cproj-guides-ubuntu.git && \
cd cproj-guides-ubuntu && \
./install.sh && \
./validate_repo.sh
```

This will:
- Create the workspace directory
- Clone the repository
- Install the scripts
- Validate the environment
