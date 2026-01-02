# PowerShell Bootstrap (Native Windows)

This method uses PowerShell and GitHub CLI, while still running the Bash scripts through Git Bash.

## Requirements
- Git for Windows
- GitHub CLI for Windows

## Bootstrap Script (PowerShell)

```powershell
$projRoot = "$env:USERPROFILE\dev\projects"
New-Item -ItemType Directory -Force -Path $projRoot | Out-Null
Set-Location $projRoot

git clone https://github.com/beckman55/cproj-guides-ubuntu.git
Set-Location cproj-guides-ubuntu

bash install.sh
bash validate_repo.sh
```

This will:
- Create the workspace
- Clone the repo
- Install the scripts
- Validate the environment
