return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	ft = { "markdown" },
	config = function()
		require("render-markdown").setup({
			-- Enable rendering in these modes
			render_modes = { "n", "c", "i" }, -- Added insert mode

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
