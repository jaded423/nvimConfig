return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	ft = { "markdown" },
	config = function()
		require("render-markdown").setup({
			-- Render in EVERY mode. Listing modes (the old { "n", "c", "i" }) left out operator-pending
			-- and visual, so pressing `y` or `v` stripped the rendering and Esc put it back — the whole
			-- buffer flipped between rendered/raw on every yank (2026-09-12). `true` = all modes.
			render_modes = true,

			-- Keep the cursor line rendered too; the default shows it raw, so j/k pops each line in and out.
			-- <leader>mr toggles to raw when you actually need to edit the syntax.
			anti_conceal = { enabled = false },

			-- Start with rendering enabled
			enabled = true,

			-- Code block styling
			code = {
				enabled = true,
				style = "full", -- full background + language label
				highlight = "RenderMarkdownCode",
			},

			-- Optional: blink.cmp integration for markdown completions
			completions = {
				blink = { enabled = true },
			},
		})

		-- Darker code block background (slightly lighter than editor bg)
		vim.api.nvim_set_hl(0, "RenderMarkdownCode", { bg = "#1a1a2e" })

		-- Auto-enable for all markdown files
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "markdown",
			callback = function()
				require("render-markdown").enable()
			end,
			desc = "Enable render-markdown for all markdown files",
		})
	end,
	keys = {
		{
			"<leader>mr",
			function()
				require("render-markdown").toggle()
			end,
			desc = "Toggle Markdown Rendering",
		},
	},
}
