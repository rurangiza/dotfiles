---
description: Use when the user wants to understand a codebase in depth: a project, repository, or service.
---

# Explain a codebase

Build a rich, interactive overview of the specified project or repository.

Read `${CLAUDE_PLUGIN_ROOT}/references/explorable-html.md` before writing any
HTML. It defines the file format, prose style, interactivity rules, diagrams,
and quiz.

## Gather

- README and any docs directory.
- Directory structure and entry points: main modules, servers, CLIs.
- Key configs: package manifest, Dockerfile, CI workflows, infrastructure.
- Trace the main data flows end to end before writing anything.

## Sections

- **Purpose.** The problem the project solves, who uses it, and where it sits
  among neighboring systems.
- **Architecture.** A system diagram of components and data flow, with
  example data. One responsibility per component, stated.
- **Key flows.** Two or three end-to-end walkthroughs of the paths that
  matter most: the life of a request, a deploy, a scheduled job. Concrete
  example data at each step.
- **Codebase tour.** Where things live, grouped by responsibility rather
  than alphabetically. Name the files a newcomer should read first.
- **Quiz.** Five questions on the substance of the project, per the shared
  spec.
