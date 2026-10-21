---
name: project-memory
description: Create and maintain the project's context files (CLAUDE.md, product.md, design.md, learnings.md) so every session starts with the same understanding. Use when a project has none of these yet, after a decision changes the product or design, after a mistake or surprise, or when the user says "remember this for the project".
---

# Project memory

Four files, each with one job:
| File | Holds | Changes when |
|---|---|---|
| CLAUDE.md | How work flows here, stack, conventions. Under 60 lines. | Process or stack changes |
| product.md | What, for whom, core flows, out of scope, success criteria | Product decisions |
| design.md | Visual direction, tokens, screen list, component rules | Design decisions, usually after a wireframe is approved |
| learnings.md | One dated line per lesson, newest first | After any mistake, surprise, or user correction |

## Init mode (files missing)
1. Copy the templates from `${CLAUDE_SKILL_DIR}/../../templates/context/` (if unreadable, write the files from the table above) into the project root.
2. Fill what you can from the README, package files, and the user's request. Mark the rest `TBD`.
3. Ask at most 3 questions to fill the most important TBDs in product.md. Leave the rest for `requirements-interview`.

## Learn mode (end of every task)
- Append to learnings.md: `YYYY-MM-DD | area | what happened | what we do now`.
- If a decision changed the product or the design, edit product.md or design.md in place. Do not append a changelog there.
- If CLAUDE.md passes 60 lines, move detail into the other files.

## Rules
- Record decisions and lessons, not activity logs.
- Never put secrets, keys, or customer data in these files.
