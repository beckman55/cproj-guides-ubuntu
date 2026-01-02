# WSL Bootstrap (Best Linux Parity)

This method gives you a full Ubuntu environment inside Windows.

## Requirements
- Windows 10/11 with WSL support

## Bootstrap Script (PowerShell)

```powershell
wsl --install
wsl sudo apt update && sudo apt install -y git gh
wsl gh auth login
wsl mkdir -p "$HOME/dev/projects"
wsl git clone https://github.com/<your-username>/cproj-guides-ubuntu.git "$HOME/dev/projects/cproj-guides-ubuntu"
wsl bash "$HOME/dev/projects/cproj-guides-ubuntu/install.sh"
wsl bash "$HOME/dev/projects/cproj-guides-ubuntu/validate_repo.sh"
```

This provides:
- Full Linux parity
- Identical behavior to your Ubuntu bootstrap
