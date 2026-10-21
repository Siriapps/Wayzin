# <Project name>

<One line: what this is.>

## Read first, every session
- product.md: what we build, for whom, out of scope
- design.md: visual direction, tokens, screens
- learnings.md: lessons; check before repeating a mistake
- docs/design-docs/: one approved design doc per feature

## How work flows (adlc plugin)
1. Describe what you want. `/adlc:start` (or plain language) routes it.
2. requirements-interview → docs/design-docs/<feature>.md, approved by a human.
3. clickable-wireframe → wireframes/<feature>/index.html, approved by a human.
4. `/adlc:ship-feature <feature>` → branch, draft PR labeled `adlc:build` → GitHub Actions builds with tests, ci.yml verifies.

## Stack and conventions
- Stack: TBD
- Tests: TBD
- Branches: feat/<feature>
