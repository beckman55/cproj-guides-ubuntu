# Validation

The repository includes a validator script that ensures:

- No hard-coded usernames
- No hard-coded absolute paths
- Scripts are executable
- Scripts contain safety flags
- Shell syntax is valid

## Run the Validator

```bash
./validate_repo.sh
```

A successful run will output:

```
ALL CHECKS PASSED — your repo is clean and universal.
```
