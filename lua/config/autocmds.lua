-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- (the "LazyVimStarted" footer override moved to init.lua, so it registers
-- before that event can possibly fire — this file loads too late for it)

-- Indentation for JS/TS projects (Node, Bun), separate from the global
-- default in options.lua. A project's .editorconfig still wins, since
-- Neovim applies it after this FileType autocmd.
vim.api.nvim_create_autocmd("FileType", {
   group = vim.api.nvim_create_augroup("js_indent", { clear = true }),
   pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact", "json", "jsonc" },
   callback = function()
      vim.opt_local.shiftwidth = 3
      vim.opt_local.tabstop = 3
   end,
})
