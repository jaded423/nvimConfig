-- nvim-treesitter main branch (v1.0) — required for Neovim 0.12.
-- The archived master branch breaks on 0.12 because query match callbacks
-- now pass TSNode[] per capture instead of TSNode.
local is_android = vim.fn.filereadable("/system/bin/linker64") == 1

local ensure_parsers = {
	"lua",
	"vim",
	"vimdoc",
	"javascript",
	"typescript",
	"tsx",
	"json",
	"html",
	"css",
	"python",
	"markdown",
	"markdown_inline",
	"bash",
	"regex",
}

-- Filetypes to enable treesitter highlighting for. Keep in sync with the
-- parsers above; `vim.treesitter.language.get_filetypes` maps parser -> ft.
local function highlight_filetypes()
	local fts = {}
	for _, lang in ipairs(ensure_parsers) do
		for _, ft in ipairs(vim.treesitter.language.get_filetypes(lang)) do
			fts[ft] = true
		end
	end
	return vim.tbl_keys(fts)
end

return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").setup({
				install_dir = vim.fn.stdpath("data") .. "/site",
			})

			if not is_android then
				require("nvim-treesitter").install(ensure_parsers)
			end

			vim.api.nvim_create_autocmd("FileType", {
				pattern = highlight_filetypes(),
				callback = function(args)
					pcall(vim.treesitter.start, args.buf)
					vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end,
			})
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		branch = "main",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			require("nvim-treesitter-textobjects").setup({
				select = { lookahead = true },
				move = { set_jumps = true },
			})

			local select = require("nvim-treesitter-textobjects.select")
			local move = require("nvim-treesitter-textobjects.move")

			local select_map = {
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
				["aa"] = "@parameter.outer",
				["ia"] = "@parameter.inner",
			}
			for lhs, capture in pairs(select_map) do
				vim.keymap.set({ "x", "o" }, lhs, function()
					select.select_textobject(capture, "textobjects")
				end, { desc = "Select " .. capture })
			end

			local function map_move(lhs, fn, capture)
				vim.keymap.set({ "n", "x", "o" }, lhs, function()
					fn(capture, "textobjects")
				end, { desc = capture })
			end

			map_move("]f", move.goto_next_start, "@function.outer")
			map_move("]c", move.goto_next_start, "@class.outer")
			map_move("]a", move.goto_next_start, "@parameter.inner")
			map_move("]F", move.goto_next_end, "@function.outer")
			map_move("]C", move.goto_next_end, "@class.outer")
			map_move("]A", move.goto_next_end, "@parameter.inner")
			map_move("[f", move.goto_previous_start, "@function.outer")
			map_move("[c", move.goto_previous_start, "@class.outer")
			map_move("[a", move.goto_previous_start, "@parameter.inner")
			map_move("[F", move.goto_previous_end, "@function.outer")
			map_move("[C", move.goto_previous_end, "@class.outer")
			map_move("[A", move.goto_previous_end, "@parameter.inner")
		end,
	},
}
