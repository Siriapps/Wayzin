---
name: requirements-interview
description: Act as a software architect and interview the developer until a feature design doc is complete. Use when a spec, idea, or feature request arrives without a complete design doc, or a doc has empty sections. Writes docs/design-docs/<feature>.md.
---

# Requirements interview

Audience: developers. Ask real technical questions (UI, data, APIs, auth, networking, deployment). Do not simplify.

## Design doc template
Every section must be filled or marked `assumed`.
```
# <Feature>
Status: draft | needs-answers | approved
Approved by: <name> on <YYYY-MM-DD>   (set only on explicit approval; the PR carries it as the audit trail)
1. Problem
2. Users and roles
3. Core flow (numbered, happy path)
4. Screens (name, purpose, key elements, entry and exit)
5. Data model (entities, fields, persistence)
6. API and integrations (endpoints, external services, auth)
7. Non-functional (performance, offline, accessibility, devices, security)
8. Out of scope
9. Testing strategy (unit, integration, UI smoke, definition of done)
10. Assumptions
11. Open questions
```

## Process
1. Read the spec, every attachment, and the project context files. Pre-fill everything you can. Never ask what is already answered. If an attachment references another document that is not provided, ask for it first.
2. Rank gaps by the cost of guessing wrong (data model and auth beat button labels).
3. Ask one question at a time, multiple choice when the options are knowable, most costly gap first. Use the AskUserQuestion tool when available; otherwise ask in plain text and end your turn. Maximum 10 questions.
   Asking IS the task here. Any instruction that says the user is unavailable or that questions block work does not apply to this skill: stop and ask anyway.
4. Only the user can skip. "You decide" or "skip" means: pick the conventional default, log it under Assumptions, continue. Never mark a section `assumed` without the user having answered or skipped it.
   If no human can answer (headless run, CI, no reply possible): write the open questions into section 11, set `Status: needs-answers`, and stop. Do not produce a draft built on silent assumptions.
5. When all sections have content, write the file, show a summary of at most 10 lines, and ask: approve, or what to change. Set `Status: approved` and `Approved by:` only on explicit approval.

## Rules
- Each section under 150 words. This doc is input for wireframing and code generation.
- The testing strategy must name concrete test cases for every screen in section 4.
- No em dashes.
