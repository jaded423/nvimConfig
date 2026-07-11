---
type: reference
title: Neovim Config Workflows
tags: [neovim, workflows, plugins, lsp]
related: [architecture, commands, index]
---

# Workflows

## Modifying the Configuration

### Adding a New LSP Server

Edit `lua/plugins/lsp/lsp.lua`:

```lua
-- Add to ensure_installed list
ensure_installed = {
  "ts_ls",
  "rust_analyzer",  -- Add your server
},

-- Add to servers table
local servers = {
  ts_ls = {},
  rust_analyzer = {
    settings = {
      -- Server-specific settings
    },
  },
}
```

### Adding a New Formatter

Edit `lua/plugins/lsp/formatting.lua`:

```lua
formatters_by_ft = {
  javascript = { "prettier" },
  rust = { "rustfmt" },  -- Add your formatter
},
```

Then install the formatter: `:MasonInstall rustfmt`

### Adding a New Plugin

Create a file in the appropriate category folder (e.g., `lua/plugins/editor/my-plugin.lua`):

```lua
return {
  "author/plugin-name",
  event = "VeryLazy",  -- Lazy load strategy
  opts = {
    -- Plugin options
  },
}
```

Restart Neovim or run `:Lazy sync` to install.

### Changing Keybindings

For global keybindings, edit `lua/config/keymaps.lua`.

For plugin-specific keybindings, find the plugin's config file and modify the `keys` table or `config` function.

**Custom utility**: `<leader>dp` - Replace buffer with clipboard, dedent one level, and copy back (useful for scratch pads with leading-space code)

## Development Workflow

### Editing Config

```bash
# Option 1: Edit via symlink
cd ~/.config/nvim
nvim lua/plugins/lsp/lsp.lua

# Option 2: Edit directly in git repo
cd ~/projects/nvimConfig
nvim lua/plugins/lsp/lsp.lua

# Both point to the same files due to symlink
```

### Testing Changes

```bash
# Reload config (restart Neovim)
nvim

# Or use a command to reload
:source $MYVIMRC

# Check for errors
:checkhealth
:messages
```

### Saving Changes

Committing & pushing is handled by the T0 weekly `push-all` sweep (see
`~/.claude/CLAUDE.md` § Commit / Push Doctrine). Just edit the config and leave
the tree dirty; subbed machines auto-pull on cron.

## Common Patterns When Adding Features

### Adding Language Support

1. Install LSP server: `:MasonInstall <server>`
2. Add to `lua/plugins/lsp/lsp.lua`
3. Install Tree-sitter parser: `:TSInstall <lang>`
4. Add formatter to `lua/plugins/lsp/formatting.lua`
5. Add linter to `lua/plugins/lsp/formatting.lua`

### Adding New Keybinding Group

Use which-key in plugin config:

```lua
keys = {
  { "<leader>t", group = "Test" },
  { "<leader>tr", "<cmd>TestNearest<cr>", desc = "Run nearest test" },
  { "<leader>tf", "<cmd>TestFile<cr>", desc = "Run test file" },
},
```

### Performance Optimization

- Use `event` for lazy loading
- Use `cmd` for command-based plugins
- Use `keys` for keybinding-triggered plugins
- Disable features for large files (handled by snacks.bigfile)
