# WayzIn

Turns a floorplan image or file into indoor navigation (web first).

## Read these first, every session
- product.md: what we are building, for whom, what is out of scope
- design.md: visual direction, tokens, component rules, screen list
- learnings.md: things we got wrong or learned; check before repeating a mistake
- docs/design-docs/: one approved design doc per feature. Nothing gets built without one.

## How work flows here (adlc plugin, project scope)
1. Describe what you want in plain language, or run `/adlc:start`. It routes to the right skill.
2. requirements-interview writes docs/design-docs/<feature>.md. A human approves it.
3. clickable-wireframe writes wireframes/<feature>/index.html. A human approves it.
4. `/adlc:ship-feature <feature>` creates branch `feat/<feature>`, and a draft PR labeled `adlc:build`. GitHub Actions then builds it with tests and ci.yml verifies.

## Conventions
- Stack: TypeScript, React, Vite, Tailwind. Floorplan processing in a separate `engine/` package (Python allowed there).
- Tests before merge: unit for engine, Playwright smoke for each screen in a design doc.
- No em dashes in any written output.
- After any mistake or surprise, append one line to learnings.md with the date.
- Keep this file short. Details belong in product.md / design.md.
