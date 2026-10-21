---
name: ship-feature
description: Ship an approved feature to GitHub. Creates the feature branch, commits the design doc and wireframe, opens a draft PR labeled adlc:build so GitHub Actions runs Claude Code to implement it with tests. Manual only.
disable-model-invocation: true
argument-hint: "<feature-name>"
---

# Ship feature

Manual on purpose: this changes things on GitHub.

## Preconditions (stop and report if any fail)
- docs/design-docs/$ARGUMENTS.md exists with `Status: approved`, `Wireframe: approved`, and an `Approved by:` line.
- wireframes/$ARGUMENTS/index.html exists.
- `gh auth status` succeeds. For GitHub Enterprise, `gh auth status --hostname <host>`.
- .github/workflows/adlc-build.yml and ci.yml exist. If not, copy them from `${CLAUDE_SKILL_DIR}/../../templates/github-workflows/`, commit to the default branch, and tell the user to add the `ANTHROPIC_API_KEY` (or `CLAUDE_CODE_OAUTH_TOKEN`) repo secret and install the Claude GitHub App before continuing.

## Steps
1. From an up to date default branch: `git checkout -b feat/$ARGUMENTS`.
2. Commit the design doc and wireframe: `feat($ARGUMENTS): design doc and wireframe`.
3. `gh label create adlc:build --force --color 0E8A16 --description "ADLC: implement this PR with Claude Code"`.
4. Push and open a draft PR with `--label adlc:build`. Body: the design doc summary, the testing strategy, the approver line, and the paths of the doc and wireframe.
5. Report the branch and PR links. Explain that the workflow now implements the feature on the branch and marks the PR ready when tests pass.

## Guardrails (tell the user once per repo)
- Protect the default branch: require the CI check and one human review before merge.
- Only maintainers should be able to add labels; the label is the build trigger.
