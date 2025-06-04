# autoflow

**autoflow** is a GitHub Actions workflow designed to automate code quality checks, compilation, testing, and mirroring for C projects in the Epitech environment. It ensures proper CI/CD practices by triggering checks on every push or pull request — while enforcing coding standards and build consistency.

## ⚙️ Workflow Overview

This repository includes a GitHub Actions workflow file (`chocolatine.yml`) that performs the following jobs:

1. **Coding Style Check**
   - Uses Epitech's Docker image to validate C code formatting
   - Fails the build if coding style errors are detected
   - Displays inline error annotations in pull requests

2. **Program Compilation**
   - Runs `make` and `make clean`
   - Validates the existence and executability of all binaries listed in `EXECUTABLES`
   - Timeout: 2 minutes

3. **Run Unit Tests**
   - Executes `make tests_run` in a CI environment
   - Ensures test pass/fail visibility

4. **Mirror Push**
   - Automatically mirrors the repository to a specified Epitech Git remote
   - Requires a `GIT_SSH_PRIVATE_KEY` stored securely in GitHub Secrets

## 🚀 Trigger Conditions

The workflow is triggered on:
- Every `push`
- Every `pull_request`

It will **not** run if:
- The branch name starts with `ga-ignore-`
- The repository is the mirror destination itself

## 🧩 Environment Variables (Required)

These must be defined **at the workflow level**:

```yaml
env:
  MIRROR_URL: git@github.com:your-repo/mirror.git
  EXECUTABLES: "mysh"
