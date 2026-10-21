# ADLC kit

An agentic development lifecycle for Claude Code: a developer describes a feature, Claude interviews them like an architect, writes a design doc, shows a clickable wireframe for approval, and on "ship it" opens a branch and PR that GitHub Actions builds with tests.

## Install (once per machine, applies to every project)
```
/plugin marketplace add <owner>/adlc-kit
/plugin install adlc@adlc-kit
```
Choose **project** scope to keep the kit per repo (recommended), or **user** scope for every project.

## Use
Just describe what you want in plain language, or run `/adlc:start`. Nothing else to memorize.

| Step | You say or do | Skill that fires | Output | Gate |
|---|---|---|---|---|
| 1 | "I want a to-do app with add, complete, delete" | `start` routes to `requirements-interview` | docs/design-docs/todo-app.md | You say "approved"; doc gets `Status: approved` and `Approved by:` |
| 2 | "show me" or start continues | `clickable-wireframe` (+ `wireframe-spec`, `webapp-testing`) | wireframes/todo-app/index.html, screenshots | You say "approved"; doc gets `Wireframe: approved` |
| 3 | "make it nicer" (optional) | `impeccable` / `frontend-design` / `emil-design-eng` | updated wireframe | Re-approve |
| 4 | `/adlc:ship-feature todo-app` (manual) | `ship-feature` | branch `feat/todo-app`, draft PR labeled `adlc:build` | Label is the build trigger |
| 5 | nothing | GitHub Actions `adlc-build.yml` runs Claude Code; `ci.yml` verifies | commits, tests, PR marked ready | Branch protection: CI green + human review |
| 6 | "review this PR" (optional) | `interface-review`, `better-accessibility`, `webapp-testing` | findings | Human merges |

Every step ends with `project-memory` updating learnings.md. Silence is never approval.

## What's inside (12 skills)
| Stage | Skill | Origin |
|---|---|---|
| Routing | `start` | custom |
| Context | `project-memory` | custom |
| Requirements | `requirements-interview` | custom |
| Wireframe | `clickable-wireframe`, `wireframe-spec` | custom, Owl-Listener |
| Visual design | `impeccable`, `frontend-design` | pbakaus, Anthropic |
| Motion and polish | `emil-design-eng` | Emil Kowalski |
| Ship | `ship-feature` (manual only) | custom |
| Review | `interface-review`, `better-accessibility` | Jakub Krehel |
| Verify | `webapp-testing` | Anthropic |

## One-time GitHub setup per repo
1. Install the Claude GitHub App on the repo (or run `/install-github-app`).
2. Add the repo secret `ANTHROPIC_API_KEY`.
3. The first `/adlc:ship-feature` run adds `.github/workflows/adlc-build.yml` and `ci.yml` for you.
4. Protect the default branch: require the CI check and one review. Only maintainers may add labels.

No API key? Use `CLAUDE_CODE_OAUTH_TOKEN` from `claude setup-token` (Pro/Max), run the build step locally with Claude Code on the feature branch, or assign the PR to the Copilot coding agent.

GitHub Enterprise Server: `gh` must be logged in to your host, and the Actions runner needs network access to the Anthropic API (or set `use_bedrock` / `use_vertex` in the workflow).

## GitHub Copilot users
`bash plugins/adlc/templates/install-for-copilot.sh /path/to/repo` copies the skills into `.github/skills/`.

## Demo: to-do app in 10 minutes
1. New empty repo, open Claude Code in it.
2. Type: "I want a simple to-do app with add, complete, delete, and filter."
3. Answer the interview, approve the doc, approve the wireframe.
4. `/adlc:ship-feature todo-app` and watch the Actions tab.

See CREDITS.md for third-party licenses.
