return {
	{
		"Mofiqul/dracula.nvim",
		priority = 1000,
		config = function()
			require("dracula").setup({
				colors = {
					bg = "#000000",
				},
				transparent_bg = false,
			})
			vim.cmd.colorscheme("dracula")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = true,
		config = function()
			require("tokyonight").setup({
				style = "night",
				transparent = true,
				terminal_colors = true,
			})
		end,
	},
}
