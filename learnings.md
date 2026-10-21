# Learnings

One line per entry, newest at the top. Format: `YYYY-MM-DD | area | what we learned | what we do differently now`.

- 2026-10-21 | process | In auto mode the interview skill asked nothing and wrote a doc of silent assumptions; the harness told it the user was unavailable | Skill now says asking is the task, and stops with Status: needs-answers when no human can answer
- 2026-10-21 | process | learnings.md was gitignored while CLAUDE.md and the Action required it; shared memory must be committed | Only session notes (HANDOFF, PLAN, adlc-plan) stay local
- 2026-10-21 | process | PR label beats issue label as the build trigger: the Action gets the branch for free and the PR is the audit trail | adlc-build.yml triggers on pull_request labeled adlc:build; ci.yml verifies independently
- 2026-10-21 | process | Skills, not a custom MCP, carry the workflow; GitHub + Figma MCPs cover tool access | Build the interview as a skill, trigger builds via GitHub label
- 2026-10-21 | process | A spec alone is not enough to design from | Always run requirements-interview first
