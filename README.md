<div align="center">

```
███╗   ██╗██╗   ██╗██╗███╗   ███╗
████╗  ██║██║   ██║██║████╗ ████║
██╔██╗ ██║██║   ██║██║██╔████╔██║
██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
```

# 🐍 nvimConfig

**Modern Neovim · Lua · lazy.nvim · Dracula · Colemak-DH**

[jadedviber.com](https://jadedviber.com) · [/now](https://jadedviber.com/now.html) · [github.com/jaded423](https://github.com/jaded423)

*Strike fast. Code faster. All vibe. No grind.*

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)
![Dracula](https://img.shields.io/badge/theme-dracula-bd93f9?style=for-the-badge)

</div>

---

```bash
$ whoami
joshua brown — vibe coder · homelab tinkerer · AI-driven dev

$ cat /editor.md
neovim, but make it cyberpunk. dracula on pitch black. colemak-dh langmap.
hardtime blocks the hjkl spam. snek welcomes you at startup.
LSP, debug, test, refactor, REST — all in one buffer. no boilerplate.

$ ls ~/.config/nvim/
init.lua  lazy-lock.json  lua/  plugin/  colors/

$ uptime
modernized 2026 · still evolving · still vibin'
```

---

## ✨ What makes it different

The distinctive choices (everything else lives in the plugin tables below):

- 🟣 **Dracula on `#000000`** — pure-black background, neon syntax. Tokyonight + Catppuccin lazy-loaded as alts.
- ⌨️ **Colemak-DH langmap** — Normal/Visual/Operator-pending only. Insert + plugin chords stay QWERTY-position. Touch-typed on Advantage360 Pro (ZMK).
- 🛡️ **Hardtime** — blocks repeated `hjkl`, nudges toward better motions. Forces discipline.
- 🐍 **Snek dashboard** — `ascii-image-converter` renders the mascot on startup via snacks.nvim.
- 🪟 **tmux ↔ nvim seamless nav** — smart-splits routes `<C-hjkl>` across both.

---

## 📦 Plugin loadout

<details>
<summary><b>Core · LSP · Completion</b></summary>

| Plugin | Purpose |
|---|---|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Lua utils |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) + [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP client + installer |
| [blink.cmp](https://github.com/saghen/blink.cmp) | Completion engine |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Snippets |
| [typescript-tools.nvim](https://github.com/pmizio/typescript-tools.nvim) | Enhanced TS/JS LSP |

</details>

<details>
<summary><b>Syntax · Navigation · Editing</b></summary>

| Plugin | Purpose |
|---|---|
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) + textobjects | Parsing, highlighting |
| [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) | Inline markdown rendering |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [oil.nvim](https://github.com/stevearc/oil.nvim) | Filesystem-as-buffer |
| [mini.files](https://github.com/echasnovski/mini.files) | Column file manager |
| [mini.surround](https://github.com/echasnovski/mini.surround) / [mini.ai](https://github.com/echasnovski/mini.ai) | Surround + textobjects |
| [mini.jump2d](https://github.com/echasnovski/mini.jump2d) / [mini.bracketed](https://github.com/echasnovski/mini.bracketed) | Quick + bracket motion |
| [mini.hipatterns](https://github.com/echasnovski/mini.hipatterns) / [mini.trailspace](https://github.com/echasnovski/mini.trailspace) | Color hl + whitespace |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) · [Comment.nvim](https://github.com/numToStr/Comment.nvim) | Brackets + comments |
| [smart-splits.nvim](https://github.com/mrjones2014/smart-splits.nvim) | tmux-aware navigation |
| [hardtime.nvim](https://github.com/m4xshen/hardtime.nvim) | Block hjkl spam, suggest better motions |

</details>

<details>
<summary><b>UI · Quality · Tools</b></summary>

| Plugin | Purpose |
|---|---|
| [dracula.nvim](https://github.com/Mofiqul/dracula.nvim) | Primary theme (`bg=#000000`) |
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) / [catppuccin](https://github.com/catppuccin/nvim) | Alts (lazy-loaded) |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | Dashboard, lazygit, gitbrowse, zen, notifier, scratch, terminal, indent, scroll, dim, bufdelete, bigfile, quickfile, toggle, scope |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Statusline |
| [noice.nvim](https://github.com/folke/noice.nvim) | Cmdline + messages |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keybinding popup |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | Diagnostics + symbols + LSP refs panel |
| [conform.nvim](https://github.com/stevearc/conform.nvim) + [nvim-lint](https://github.com/mfussenegger/nvim-lint) | Format + lint |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | TODO/FIXME tracking |
| [persistence.nvim](https://github.com/folke/persistence.nvim) | Session save/restore |
| [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Floating terminal |
| [kulala.nvim](https://github.com/mistweaverco/kulala.nvim) | REST client for `.http` |
| [peek.nvim](https://github.com/toppair/peek.nvim) | Live markdown preview |
| [vim-dadbod](https://github.com/tpope/vim-dadbod) + [dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui) + dadbod-completion | Database UI + SQL completion |

</details>

---

## 🚀 Install

```bash
# Backup existing config (just in case)
mv ~/.config/nvim ~/.config/nvim.backup 2>/dev/null

# Clone
git clone https://github.com/jaded423/nvimConfig.git ~/.config/nvim

# Launch — lazy.nvim auto-installs everything
nvim
```

**Prereqs**

```bash
# macOS
brew install neovim ripgrep fd lazygit deno ascii-image-converter node
```

| Dep | Why |
|---|---|
| neovim ≥ 0.9.4 (0.10+ recommended) | obvious |
| ripgrep, fd | telescope grep + file finding |
| lazygit | `<leader>gg` TUI git |
| node | some LSPs + debuggers |
| deno | peek.nvim markdown preview |
| ascii-image-converter | snek dashboard |
| [Nerd Font](https://nerdfonts.com) | optional, for icons |

**Post-install**

```vim
:Mason          " install LSPs, formatters, linters, debuggers
:checkhealth    " verify everything
:Lazy           " inspect plugin state
```

Pick your fighters in Mason: `ts_ls`, `eslint`, `pyright`, `lua_ls`, `prettier`, `stylua`, `black`, `isort`, `eslint_d`, `pylint`.

---

## ⌨️ Keybindings

Leader: `<Space>` · Local leader: `<Space>` · which-key shows everything live (`<leader>?`).

> ⚠️ **Colemak-DH heads up**: keys below are written in **QWERTY position**. The langmap remaps the physical key, so `<C-h>` etc. still works on the QWERTY home row regardless of your layout.

### General

| Key | Action |
|---|---|
| `<leader>?` | Show all keybindings |
| `<leader>w` | Save |
| `<leader>q` | Quit |
| `<leader>sa` | Save as |

### Files & buffers

| Key | Action |
|---|---|
| `<leader>ff` / `fg` / `fb` / `fo` | Telescope: files / grep / buffers / recents |
| `-` | oil.nvim (parent dir) |
| `<leader>-` | oil.nvim (floating) |
| `<leader>fm` / `<leader>fM` | mini.files (file dir / cwd) |
| `<leader>bn` / `bp` / `bd` | Next / prev / delete buffer |

### Windows

| Key | Action |
|---|---|
| `<C-h/j/k/l>` | Move between splits |
| `<A-h/j/k/l>` | smart-splits move |
| `<C-Arrow>` | Resize |
| `<leader><leader>h/j/k/l` | Swap buffers |

### Git (via snacks — calls system binaries)

| Key | Action |
|---|---|
| `<leader>gg` | Lazygit (system `lazygit`) |
| `<leader>gb` | Git browse (open in GitHub) |
| `<leader>gB` | Inline blame |

### LSP

| Key | Action |
|---|---|
| `gd` / `gr` / `K` | Definition / references / hover |
| `<leader>rn` / `ca` / `cf` / `cl` | Rename / code action / format / lint |

### Diagnostics & symbols

| Key | Action |
|---|---|
| `<leader>xx` / `xX` | Trouble: all / buffer diagnostics |
| `<leader>cs` / `cl` | Trouble: symbols / LSP refs |
| `[d` / `]d` · `[b` / `]b` | Prev/next diag · buffer |

### Editing

| Key | Action |
|---|---|
| `gcc` · `gc` (visual) | Comment toggle |
| `sa{motion}` / `sd{c}` / `sr{old}{new}` | mini.surround |
| `<` / `>` (visual) | Indent (keeps selection) |
| `<CR>` (Enter) | jump2d |

### TODOs · Markdown · REST

| Key | Action |
|---|---|
| `]t` / `[t` · `<leader>xt` / `xT` · `<leader>st` / `sT` | TODO navigation · Trouble · Telescope |
| `<leader>mp` | Toggle markdown preview |
| `<leader>kr` / `ka` / `kt` / `kc` | Kulala: run · run all · response · copy as cURL |
| `]k` / `[k` | Prev/next HTTP request |

### Session

| Key | Action |
|---|---|
| `<leader>qs` / `qS` / `ql` / `qd` | Restore · select · last · don't save |

### Database · Misc

| Key | Action |
|---|---|
| `<leader>db` / `dt` / `df` / `dr` / `dl` | DBUI · toggle · find · rename · last query |
| `<C-\>` / `<C-/>` | Terminal (toggleterm / snacks) |
| `<leader>z` / `<leader>Z` | Zen mode / zoom |
| `<leader>.` / `<leader>S` | Scratch buffer / select |
| `<leader>N` | Notification history |

---

## 📁 Structure

```
~/.config/nvim/                  # symlinked to ~/projects/nvimConfig
├── init.lua                     # entry — loads modules + lazy
├── lazy-lock.json               # pinned versions
└── lua/
    ├── config/
    │   ├── options.lua          # vim opts
    │   ├── keymaps.lua          # global keys
    │   ├── colemak.lua          # Colemak-DH langmap
    │   ├── autocmds.lua
    │   └── lazy.lua             # plugin bootstrap
    └── plugins/
        ├── coding/              # syntax · todos · peek · render-md
        ├── editor/              # editor · mini · smart-splits · hardtime
        ├── lsp/                 # lsp · completion · formatting · typescript-tools
        ├── navigation/          # telescope · trouble
        ├── session/             # persistence
        ├── tools/               # kulala · dadbod-ui
        ├── ui/                  # dracula · lualine · noice · snacks
        ├── snek.png             # 🐍 dashboard mascot
        └── keybindings.lua      # which-key
```

---

## 🎨 Customization

**Switch theme** — edit `lua/plugins/ui/colorscheme.lua`:

```lua
-- Dracula is primary (priority=1000). Catppuccin + Tokyonight load lazy.
-- To swap, set the alt to priority=1000 and call vim.cmd.colorscheme(...)
```

**Toggle format-on-save**

```vim
:FormatDisable        " buffer
:FormatDisable!       " global
:FormatEnable         " back on
```

**Add LSP servers** — edit `lua/plugins/lsp/lsp.lua`, append to `ensure_installed`.

**Tune Hardtime** — edit `lua/plugins/editor/hardtime.lua`:
- `restriction_mode = "hint"` for gentler nudge
- `disable_mouse = true` for full keyboard discipline
- `max_count = 2` for max strictness
- `:Hardtime toggle` to turn off temporarily

**Disable Colemak-DH** — comment out `require("config.colemak")` in `init.lua`.

---

## 🤖 AI-assisted, end-to-end

This config was built and modernized through dialogue with Claude (Anthropic). No boilerplate, no templates — just iterative conversation, tested in phases. Same approach behind everything at [jadedviber.com](https://jadedviber.com).

Day-to-day AI lives **outside the editor** (Claude Code in the terminal, ChatGPT in the browser). Copilot inside Neovim was tried and removed — preferred surface is the terminal alongside `nvim`, not embedded in it.

---

## 🐛 Troubleshooting

```vim
:Lazy sync          " plugins not installing
:LspInfo            " LSP status
:LspRestart         " LSP wedged
:Mason              " add/remove servers
:TSUpdate           " tree-sitter parsers
:ConformInfo        " formatter issues
:checkhealth        " everything
```

Dashboard snek not rendering? → `brew install ascii-image-converter`.

Colemak keys feel wrong? → langmap only hits Normal/Visual/Operator-pending. Insert mode + plugin chords stay QWERTY-position.

---

## 🔗 Resources

- [Neovim docs](https://neovim.io/doc/) · [lazy.nvim](https://github.com/folke/lazy.nvim) · [Mason registry](https://mason-registry.dev/) · [Awesome Neovim](https://github.com/rockerBOO/awesome-neovim)
- Symlinked from `~/.config/nvim` — see `CLAUDE.md` for setup
- Pinned versions in `lazy-lock.json` (commit it)

---

## 📝 License

MIT — see [LICENSE](LICENSE)

---

<div align="center">

```
$ echo "thanks for visiting"
```

*<sub>maintained by [@jaded423](https://github.com/jaded423) · built end-to-end through dialogue with AI · cyberpunk-styled · monospace everything</sub>*

**[jadedviber.com](https://jadedviber.com)** · *All vibe. No grind.* 🐍

</div>
