-- Colemak-DH langmap for Neovim
--
-- Maps Colemak-DH key positions to their QWERTY equivalents in Normal,
-- Visual, and Operator-pending modes. Insert mode is NOT affected.
--
-- Physical position → Colemak sends → langmap treats as QWERTY
--
-- Top row:    Q  W  F  P  B    J  L  U  Y  ;
-- QWERTY:     Q  W  E  R  T    Y  U  I  O  P
--
-- Home row:   A  R  S  T  G    M  N  E  I  O
-- QWERTY:     A  S  D  F  G    H  J  K  L  ;
--
-- Bottom row: Z  X  C  D  V    K  H  ,  .  /
-- QWERTY:     Z  X  C  V  B    N  M  ,  .  /

local M = {}

local langmap_string = table.concat({
	-- Top row (lowercase)
	"fe", "pr", "bt", "jy", "lu", "ui", "yo",
	-- Home row (lowercase)
	"rs", "sd", "tf", "mh", "nj", "ek", "il",
	-- Bottom row (lowercase)
	"dv", "vb", "kn", "hm",
	-- Top row (uppercase)
	"FE", "PR", "BT", "JY", "LU", "UI", "YO",
	-- Home row (uppercase)
	"RS", "SD", "TF", "MH", "NJ", "EK", "IL",
	-- Bottom row (uppercase)
	"DV", "VB", "KN", "HM",
	-- Semicolon ↔ O swap
	"o\\;", "\\;p",
	"O:", ":P",
}, ",")

function M.enable()
	vim.o.langmap = langmap_string
	vim.o.langremap = false -- prevent recursive remapping
	vim.notify("Colemak-DH langmap enabled", vim.log.levels.INFO)
end

function M.disable()
	vim.o.langmap = ""
	vim.notify("Colemak-DH langmap disabled", vim.log.levels.INFO)
end

function M.toggle()
	if vim.o.langmap == "" then
		M.enable()
	else
		M.disable()
	end
end

-- User commands
vim.api.nvim_create_user_command("ColemakEnable", M.enable, { desc = "Enable Colemak-DH langmap" })
vim.api.nvim_create_user_command("ColemakDisable", M.disable, { desc = "Disable Colemak-DH langmap" })
vim.api.nvim_create_user_command("ColemakToggle", M.toggle, { desc = "Toggle Colemak-DH langmap" })

return M
