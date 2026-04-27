-- :Matrix → green phosphor scheme (see colors/matrix.vim)
-- :Default → restore Dracula (the configured default)
vim.api.nvim_create_user_command("Matrix", function()
  vim.cmd.colorscheme("matrix")
end, {})

vim.api.nvim_create_user_command("Default", function()
  vim.cmd.colorscheme("dracula")
end, {})
