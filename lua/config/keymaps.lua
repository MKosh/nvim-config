-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>pP", ":w<CR>",              { silent = true, desc = "Idk save" })
vim.keymap.set("n", "<leader>bn", ":bnext<cr>",          { silent = true, desc = "Next" })
vim.keymap.set("n", "<leader>bb", ":bprevious<cr>",      { silent = true, desc = "Back" })
vim.keymap.set("n", "<leader>bc", ":bd<cr>",             { silent = true, desc = "Close buffer" })
vim.keymap.set("n", "<leader>bj", ":BufferLinePick<cr>", { silent = true, desc = "Jump to" })
vim.keymap.set("n", "<leader>bs", ":w<CR>",              { silent = true, desc = "Save buffer"})

-- -----------------------------------------------------------------------------

-- ToggleTerm ------------------------------------------------------------------
vim.keymap.set("n", "<M-1>", ":ToggleTerm size = 10 direction=horizontal<CR>", { silent = true, desc = "Open horizontal terminal"})
vim.keymap.set("n", "<M-2>", ":ToggleTerm size = 80 direction=vertical<CR>",   { silent = true, desc = "Open vertical terminal"})
vim.keymap.set("n", "<M-3>", ":ToggleTerm size = 30 direction=float<CR>",      { silent = true, desc = "Open floating terminal"})
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]],            { silent = true, desc = 'Exit terminal'})
vim.keymap.set('t', 'jk',    [[<C-\><C-n>]],            { silent = true, desc = 'Exit terminal'})
vim.keymap.set('t', '<C-j>', [[<cmd>wincmd j<CR>]],     { silent = true, desc = 'Move window down'})
vim.keymap.set('t', '<C-h>', [[<cmd>wincmd h<CR>]],     { silent = true, desc = 'Move window left'})
vim.keymap.set('t', '<C-k>', [[<cmd>wincmd k<CR>]],     { silent = true, desc = 'Move window up'})
vim.keymap.set('t', '<C-l>', [[<cmd>wincmd l<CR>]],     { silent = true, desc = 'Move window right'})
vim.keymap.set('t', '<M-1>', [[<cmd>ToggleTerm<cr>]],   { silent = true, desc = 'Open horizontal terminal'})
vim.keymap.set('t', '<M-2>', [[<cmd>ToggleTerm<cr>]],   { silent = true, desc = 'Open vertical terminal'})
vim.keymap.set('t', '<M-3>', [[<cmd>ToggleTerm<cr>]],   { silent = true, desc = 'Open floating terminal'})


vim.keymap.set('n', '<leader>hx', require('harpoon.mark').add_file, { desc = "Harpoon mark"})
vim.keymap.set('n', '<leader>hn', require('harpoon.ui').nav_next,   { desc = "Harpoon next"})
vim.keymap.set('n', '<leader>hp', require('harpoon.ui').nav_prev,   { desc = "Harpoon prev"})
vim.keymap.set('n', '<leader>hd', require('harpoon.mark').rm_file,  { desc = "Harpoon remove"})
vim.keymap.set('n', '<leader>hm', ':Telescope harpoon marks<CR>',   { silent = true, desc = "Harpoon marks"})

vim.keymap.set('n', '<leader>s/', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({winblend=10,previewer=false,})) end, { silent = true, desc = "Fuzzy find in current buffer"} )
