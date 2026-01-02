# cproj-guides-ubuntu

A universal, zero‑hard‑coding automation toolkit for creating, launching, and validating development projects on Ubuntu and Windows.  
Designed for reproducibility, portability, and frictionless onboarding.

---

# Badges

![ShellCheck](https://img.shields.io/badge/lint-shellcheck-blue)
![Platform](https://img.shields.io/badge/platform-linux%20%7C%20windows-green)
![License](https://img.shields.io/badge/license-MIT-yellow)

---

# Overview

This repository provides:

- Universal project automation scripts (\`cproj\`, \`newproj\`)
- A full repository validator (\`validate_repo.sh\`)
- A structured documentation system (\`docs/\`)
- Windows onboarding options (\`Windows/\`)
- A clean, portable installation workflow

Everything is designed to avoid hard‑coded usernames, paths, or environment assumptions.

---

# Quick Start

## Linux / Ubuntu

\`\`\`bash
sudo apt update && sudo apt install -y git gh && \
gh auth login && \
mkdir -p "$HOME/dev/projects" && \
cd "$HOME/dev/projects" && \
git clone https://github.com/<your-username>/cproj-guides-ubuntu.git && \
cd cproj-guides-ubuntu && \
./install.sh && \
./validate_repo.sh
\`\`\`

---

## Windows

See the full Windows onboarding guide in:

\`\`\`
Windows/README.md
\`\`\`

### Options include:

### **1. Git Bash (Most Compatible)**
Works on any Windows installation with Git for Windows.

### **2. PowerShell (Native Windows)**
Uses Git + GitHub CLI + Git Bash.

### **3. WSL (Best Linux Parity)**
Full Ubuntu environment inside Windows.

---

# Documentation

Full documentation is available in:

\`\`\`
docs/
\`\`\`

Sections include:

- Setup
- Scripts
- Workflows
- Troubleshooting

---

# Philosophy

This project is built around:

- Zero hard‑coded values  
- Auto‑detecting environment and user context  
- Reproducible onboarding  
- Clean, portable scripts  
- Self‑auditing validation  

Every script is designed to work on any machine, for any user, without modification.

---

# License

MIT License  
See \`LICENSE\` for details.
