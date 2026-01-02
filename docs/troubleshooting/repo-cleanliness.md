# Repository Cleanliness

This repository is designed to be universal and portable. To maintain that standard:

- Never hard-code usernames
- Never hard-code absolute paths
- Always use `$HOME` instead of `/home/<user>`
- Always use `gh api user --jq '.login'` for GitHub identity
- Run the validator before committing major changes
