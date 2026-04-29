-- :Catppuccin → macchiato pastels (catppuccin/nvim plugin)
-- :Matrix     → green phosphor with amber/cyan accents (colors/matrix.vim)
-- :Dracula    → dracula on pure black (Mofiqul/dracula.nvim, also the boot default)
-- :Tokyo      → tokyonight night, transparent (folke/tokyonight.nvim)
vim.api.nvim_create_user_command("Catppuccin", function()
  vim.cmd.colorscheme("catppuccin")
end, {})

vim.api.nvim_create_user_command("Matrix", function()
  vim.cmd.colorscheme("matrix")
end, {})

vim.api.nvim_create_user_command("Dracula", function()
  vim.cmd.colorscheme("dracula")
end, {})

vim.api.nvim_create_user_command("Tokyo", function()
  vim.cmd.colorscheme("tokyonight-night")
end, {})
