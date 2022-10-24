# github-action

test
Github-action is a repository regrouping all my reusable workflow

# How to test github action locally

## Install act

    ```bash
    brew install act --HEAD
    ```

## Run act

```bash
# Command structure:
act [<event>] [options]
If no event name passed, will default to "on: push"

# list jobs
act -l
act workflow_dispatch -l

# DryRun
act -n

# Draw workflow
act -g

# Manage secrets
act -s mysecrest=#####

# Manage secrets from a file
act --secre-file filename (default .secrets)

# Run specific job
act -j jobId
act workflow_dispatch -j jobId

# Run it with pull_request event
act pull_request

More info here: https://github.com/nektos/act
```
