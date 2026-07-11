# CLAUDE.md

> **Stack:** Tier-2 leaf. Parent hub: [unibrain](../unibrain/CLAUDE.md). Router: [global](~/.claude/CLAUDE.md). Leaf → no `wiki/` tree.

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

**Personal Neovim configuration** — Lua, `lazy.nvim` for plugin management. Symlinked from `~/.config/nvim` so edits in either location are the same files.

**Symlink**: `~/.config/nvim -> ~/projects/nvimConfig`

## Layout

- `init.lua` — entry point (minimal, delegates to `lua/config/`)
- `lua/config/` — core settings (`options`, `keymaps`, `autocmds`, `lazy`)
- `lua/plugins/` — plugin specs, organized by category (`ai/`, `coding/`, `debug/`, `editor/`, `git/`, `lsp/`, `navigation/`, `session/`, `testing/`, `tools/`, `ui/`) + `keybindings.lua`
- `lazy-lock.json` — pinned plugin versions (commit this)
- `.gitattributes` — enforces LF line endings

## Conventions

- Markdown files use camelCase names (e.g. `gitStages.md`).
- Plugin config files named for the plugin's purpose; group multi-plugin files by category.
- Always LF line endings (enforced by `.gitattributes` + an `init.lua` autocmd).

Backups are manual (`gitvi` / `nvimbackup` zsh aliases) — see [global CLAUDE.md](~/.claude/CLAUDE.md).

## Documentation

Detailed docs (typed, linked) — start at the index:

- **[docs/index.md](docs/index.md)** — catalog of all docs
- [docs/architecture.md](docs/architecture.md) — design, plugin organization, per-feature impl, version requirements + external deps, plugin-update flow
- [docs/commands.md](docs/commands.md) — all commands + keybindings
- [docs/workflows.md](docs/workflows.md) — how to modify config (add LSP/formatter/plugin/keybinding)
- [docs/troubleshooting.md](docs/troubleshooting.md) — fixes per subsystem
- [docs/changelog.md](docs/changelog.md) — version history
