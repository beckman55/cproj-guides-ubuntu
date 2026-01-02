# Installation

## Prerequisites

Before installing the automation scripts, ensure the following tools are available:

- Git
- GitHub CLI (`gh`)
- Bash 5+
- Ubuntu or Ubuntu-based environment

## Install the Scripts

Run the installer:

```bash
./install.sh
```

This copies `cproj` and `newproj` into `/usr/local/bin` and makes them executable.

## Verify Installation

```bash
which cproj
which newproj
```

Both commands should output `/usr/local/bin/...`.
