-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.clipboard = vim.env.SSH_CONNECTION and "" or "unnamedplus"

-- LSP Server to use for PHP.
-- Set to "intelephense" to use intelephense instead of phpactor.
-- vim.g.lazyvim_php_lsp = "intelephense"

-- set speel defaul off
--  untuk aktifkan bisa di togle saja, dengan  leader + u + s
opt.spell = false
-- set speel bahasa indonesia and english
-- opt.spelllang = { "id", "en" }
opt.termguicolors = true
