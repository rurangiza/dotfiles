---
description: Use when the user wants to understand a technical topic in depth: a concept, pattern, algorithm, or technology.
---

# Explain a concept

Build a rich, interactive explanation of the specified concept.

Read `${CLAUDE_PLUGIN_ROOT}/references/explorable-html.md` before writing any
HTML. It defines the file format, prose style, interactivity rules, diagrams,
and quiz.

## Gather

- Unfamiliar, recent, or version-sensitive concept: check official docs on
  the web. Don't answer from memory.
- Concept appears in the user's codebase: find real usages and build the
  examples from them.

## Sections

- **Prerequisites.** What the reader needs to already know, briefly
  refreshed, marked skippable.
- **Intuition.** The core idea through a toy example or analogy, before any
  formalism. Name the problem the concept solves and what breaks without it.
- **How it works.** The mechanics. Step through concrete scenarios with
  example data and diagrams. Cover edge cases and failure modes.
- **In practice.** Trade-offs, when to use it, when not to, common pitfalls.
  Show codebase usages when they exist.
- **Quiz.** Five questions on the substance of the concept, per the shared
  spec.
