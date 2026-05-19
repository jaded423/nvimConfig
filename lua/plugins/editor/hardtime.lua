return {
	-- Hardtime: blocks repeated hjkl spam, suggests better motions in real time.
	-- Knobs to tune as you improve:
	--   restriction_mode = "hint"  -- gentler: shows hint but doesn't block
	--   disable_mouse = true       -- forces full keyboard discipline
	--   max_count = 2              -- stricter than default 3
	-- Toggle on/off any time with `:Hardtime toggle`.
	{
		"m4xshen/hardtime.nvim",
		lazy = false,
		dependencies = { "MunifTanjim/nui.nvim" },
		opts = {
			max_count = 3,
			disable_mouse = false,
			hint = true,
			notification = true,
			restriction_mode = "block",
			disabled_filetypes = {
				"qf",
				"netrw",
				"lazy",
				"mason",
				"oil",
				"help",
				"checkhealth",
				"TelescopePrompt",
			},
		},
	},
}
