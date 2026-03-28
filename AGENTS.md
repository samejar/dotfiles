# Agent Working Agreement

These rules are mandatory for any coding agent making changes in this repo.

## Safe Edit Protocol

1. Prefer minimal, in-place edits for user requests.
2. Do not restore whole files from git history unless the user explicitly asks for a rollback.
3. If any non-minimal action appears necessary (history restore, wide refactor, bulk replacement), stop and ask for explicit user confirmation first.
4. If branch freshness is uncertain before editing, run `git pull --rebase` first.
5. After editing, verify scope with `git diff -- <file>` and ensure only intended changes are present.
6. If actual change scope expands beyond the request, stop and report before continuing.

## Git Safety

1. Never use destructive git commands (`reset --hard`, forced checkout, etc.) unless explicitly requested.
2. Never amend commits unless explicitly requested.
3. Never push forcefully to protected/default branches.
4. For any history-rewriting or potentially destructive git action (e.g., rebase, force-push, branch deletion/rename, multi-commit revert/reset), stop and ask for explicit user confirmation first.
5. Do not use workaround paths to avoid asking for confirmation when rule 4 applies.
