---
name: start
description: Front door for all product work in this project. Use whenever the user describes something to build, change, design, fix, or ship, pastes a spec or design document, or says "build", "add", "design", "wireframe", "plan", "ship it", even without naming a skill or command. Figures out where the request sits in the lifecycle and runs the right skills in order.
---

# ADLC: start

The user should never need to know a skill name. Read the request, decide the stage, and run the matching skills yourself.

## 0. Load context
If CLAUDE.md, product.md, design.md, or learnings.md are missing, run `project-memory` in init mode first. Otherwise read all four, plus any doc in docs/design-docs/ related to the request. Check learnings.md for mistakes not to repeat.

## 1. Classify (silently)
| The user... | Stage | Run |
|---|---|---|
| Describes a new feature, screen, or app | Requirements | `requirements-interview` |
| Wants to change an existing feature | Requirements (delta) | `requirements-interview` on the existing doc, changed sections only |
| Has an approved design doc and wants to see it | Wireframe | `clickable-wireframe` |
| Wants a look changed ("make it nicer", "too generic") | Visual pass | `impeccable` or `frontend-design`; motion details with `emil-design-eng` |
| Approves the wireframe ("build it", "ship it", "approved") | Build | tell the user to run `/adlc:ship-feature <feature>`; it is manual on purpose |
| Asks for a review of built UI or a PR | Review | `interface-review`, then `better-accessibility`, then `webapp-testing` |
| Reports a bug | Fix | fix it, then `project-memory` learn mode |

If two stages fit, pick the earlier one. Say in one line which stage you chose and why, then start.

## 2. Gates (never skip)
- No wireframe without a design doc marked `Status: approved`.
- No build without a wireframe the user approved in this conversation or recorded as approved in the doc.
- Approval means the user said so. Silence is not approval.

## 3. Close every task
Run `project-memory` in learn mode: one line for anything that surprised you, and update product.md or design.md if a decision changed them.
