-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.cmd('autocmd! TermOpen term:://* lua set_terminal_keymaps()')
-- vim.cmd('autocmd BufEnter * tcd %:p:h')
