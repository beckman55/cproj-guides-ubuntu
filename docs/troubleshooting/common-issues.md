# Common Issues

## GitHub Authentication

If `gh` commands fail, run:

```bash
gh auth login
```

## Permission Errors

If scripts fail to execute:

```bash
sudo chmod +x /usr/local/bin/cproj
sudo chmod +x /usr/local/bin/newproj
```

## Validator Fails Unexpectedly

Ensure you are running it from the repo root:

```bash
./validate_repo.sh
```
