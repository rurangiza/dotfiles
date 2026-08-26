# Explorable HTML output format

Shared spec for all xplain skills. The SKILL.md decides what to explain; this
file decides how the output looks and behaves.

## File

- One self-contained HTML file, CSS and JavaScript inline.
- One long page with a table of contents and section headers. No tabs.
- Responsive enough to read on a phone.
- Save outside any repo, filename prefixed with today's date:
  `/tmp/2026-01-12-explanation-<slug>.html`. The date keeps files time-sorted
  and out of version control.

## Prose

- Follow ASD-STE100 (Simplified Technical English): approved vocabulary, short
  sentences (max 20 words procedural, 25 descriptive), active voice, one topic
  per paragraph.
- Use callouts for definitions, key concepts, and edge cases.

## Interactivity (required)

The reader changes an input and watches the system respond. Every core
mechanism gets at least one such widget. The quiz does not count; it tests
understanding, it doesn't build it.

Patterns, pick what fits:

- **Slider.** A number drives a live diagram. Drag "replicas: 3", watch load
  redistribute.
- **Draggable tokens.** Reorder a queue or reroute a request; the diagram
  reacts to the new arrangement.
- **Step player.** Play, pause, step one tick at a time, state visible at
  each tick.
- **State toggle.** Flip a condition (cache hit vs miss, node up vs down) and
  compare outcomes side by side.
- **Click to inspect.** Clicking a component reveals its current state and
  data.

Rules:

- A control recomputes the state it displays. Swapping prerecorded snapshots
  is an animation, not an explorable.
- Vanilla JS, inline. No React, no build step. For hard drag mechanics you
  may load one small CDN library (interact.js), at the cost of needing
  network.
- Every widget starts in a meaningful state and has a visible reset.

## Diagrams

- Reuse a small set of diagram families across the page instead of inventing
  a new visual per section. Two that earn their place: a simplified version
  of the app's UI, and a system diagram of components and data flow. Always
  show example data.
- Never ASCII art. Build diagrams from simple HTML; use HTML lists for lists.

## Code blocks

- Use `<pre>` tags. A custom div needs `white-space: pre-wrap` in its CSS or
  the browser collapses all newlines into one line.
- Before saving, check every code block for `white-space: pre` or `pre-wrap`.

## Quiz

End with five interactive multiple-choice questions. Clicking an answer says
correct or not and explains why. Medium difficulty: answerable only by
someone who understood the substance, no gotchas.
