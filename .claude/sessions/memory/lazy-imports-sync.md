---
name: lazy-imports-sync
description: When adding or removing an entire plugin category/dir under lua/plugins/, also update the import list in lua/config/lazy.lua so lazy.nvim actually loads (or stops loading) that directory.
metadata:
  type: feedback
---

When an entire plugin **category/dir** under `lua/plugins/` is added or removed, also update `lua/config/lazy.lua` — the `spec = { { import = "plugins.foo" }, ... }` list controls which dirs lazy.nvim scans.

**Why:** lazy.nvim only loads dirs explicitly imported in `lazy.lua`. Removing a dir without removing its import line = startup error (path doesn't exist). Adding a dir without adding its import line = plugins silently never load. Discovered 2026-05-19 after the session that removed `debug/`, `testing/`, and `git/` directories during a plugin-trim audit — user had to update `lazy.lua` manually after.

**How to apply:**
- **Removing** `lua/plugins/<category>/` (rmdir): also remove `{ import = "plugins.<category>" }` from `lua/config/lazy.lua`.
- **Adding** new `lua/plugins/<category>/` dir: append `{ import = "plugins.<category>" }` to the spec list.
- **Single-file** add/remove inside an existing category dir does NOT require a `lazy.lua` change — only whole-directory changes do.
- Apply during the same edit, not as a follow-up. Mention the `lazy.lua` update in the summary.
