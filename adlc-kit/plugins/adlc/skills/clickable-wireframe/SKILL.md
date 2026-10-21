---
name: clickable-wireframe
description: Turn an approved design doc into a clickable single-file HTML wireframe for review and approval. Use after a design doc is approved, or when the user asks for a prototype, mockup, or clickable wireframe.
---

# Clickable wireframe

Input: docs/design-docs/<feature>.md with `Status: approved`. If it is not approved, stop and route back to `requirements-interview`.
Output: wireframes/<feature>/index.html. One file, no build step, opens by double click.

## Steps
1. List every screen (doc section 4) and every transition between them (section 3).
2. Choose fidelity. Default is mid-fi: real layout and real copy, grey boxes for images. Use `wireframe-spec` to annotate content priority, states, and behavior.
3. If design.md defines tokens, use them. If the user wants visual polish at this stage, run `impeccable` (or `frontend-design`) for the visual direction, then come back.
4. Build it: each screen is a section, navigation through buttons and hash links, mobile width first (390px), then desktop. Include empty, loading, and error states for any screen that loads data.
5. Add a wireframe map: pressing M shows a list of all screens and which transitions are wired.
6. Verify with `webapp-testing`: click every transition, screenshot every screen at 390px and 1280px, fix anything broken.
7. Present the screenshots and the file path. Ask: approve, change, or scrap. On approval, write `Wireframe: approved <date>` into the design doc.

## Rules
- Never invent a screen that is not in the doc. If one is missing, say so and update the doc first.
- No lorem ipsum. Use realistic copy from the domain.
- Keep the file under 2000 lines.
