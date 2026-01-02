# Repository Validator

The validator ensures that the repository remains universal, portable, and free of environment-specific values.

## Checks Performed

- Hard-coded usernames
- Hard-coded absolute paths
- Hard-coded GitHub remotes
- Missing shebangs
- Non-executable scripts
- Shell syntax errors
- Missing safety flags (`set -euo pipefail`)

## Run the Validator

```bash
./validate_repo.sh
```
