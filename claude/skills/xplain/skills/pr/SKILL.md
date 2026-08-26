---
description: Use when the user wants to understand a code change in depth: a PR, diff, branch, or commit range.
---

# Explain a code change

Build a rich, interactive explanation of the specified change.

Read `${CLAUDE_PLUGIN_ROOT}/references/explorable-html.md` before writing any
HTML. It defines the file format, prose style, interactivity rules, diagrams,
and quiz.

## Gather

- PR named or linked: `gh pr view` for title, description, and discussion;
  `gh pr diff` for the change.
- Branch or commit range: `git diff` and `git log` against the base.
- Explore the surrounding code the change touches. The Background section
  depends on it.

## Sections

- **Background.** The existing system this change touches. Give a deep
  beginner background first, marked skippable, then a narrow background
  specific to the change.
- **Intuition.** The essence of the change, not the details. Concrete
  examples with toy data, diagrams throughout.
- **Code.** A high-level walkthrough of the changes, grouped and ordered for
  understanding rather than by file order.
- **Quiz.** Five questions on the substance of the change, per the shared
  spec.
