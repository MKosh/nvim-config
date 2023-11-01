-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- -----------------------------------------------------------------------------
-- Buffers
vim.keymap.set("n", "<leader>bn", ":bnext<cr>",          { silent = true, desc = "Next" })
vim.keymap.set("n", "<leader>bb", ":bprevious<cr>",      { silent = true, desc = "Back" })
vim.keymap.set("n", "<leader>bc", ":bd<cr>",             { silent = true, desc = "Close buffer" })
vim.keymap.set("n", "<leader>bj", ":BufferLinePick<cr>", { silent = true, desc = "Jump to" })
vim.keymap.set("n", "<leader>bs", ":w<CR>",              { silent = true, desc = "Save buffer"})

-- -----------------------------------------------------------------------------
-- ToggleTerm
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


-- -----------------------------------------------------------------------------
-- Harpoon
vim.keymap.set('n', '<leader>hx', require('harpoon.mark').add_file, { desc = "Harpoon mark"})
vim.keymap.set('n', '<leader>hn', require('harpoon.ui').nav_next,   { desc = "Harpoon next"})
vim.keymap.set('n', '<leader>hp', require('harpoon.ui').nav_prev,   { desc = "Harpoon prev"})
vim.keymap.set('n', '<leader>hd', require('harpoon.mark').rm_file,  { desc = "Harpoon remove"})
vim.keymap.set('n', '<leader>hm', ':Telescope harpoon marks<CR>',   { silent = true, desc = "Harpoon marks"})

-- -----------------------------------------------------------------------------
-- Telescope
vim.keymap.set('n', '<leader>s/', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({winblend=10,previewer=false,})) end, { silent = true, desc = "Fuzzy find in current buffer"} )

-- -----------------------------------------------------------------------------
-- Editing keymaps
vim.keymap.set('n', '<leader>cp', '$a # +++ MMM<esc>',         { desc = "Perl my EOL comment"})
vim.keymap.set('n', '<leader>cc', '$a // +++ MMM<esc>',        { desc = "C++ my EOL comment"})

-- -----------------------------------------------------------------------------
-- General keymaps
vim.keymap.set('n', '<leader>;', ':Dashboard<cr>',            { silent = true, desc = 'Dashboard'})

-- -----------------------------------------------------------------------------
-- Hmake
vim.keymap.set('n', '<leader>ma', ':! hmake all<cr>',            { silent = true, desc = 'hmake all'})
vim.keymap.set('n', '<leader>mi', ':! hmake install<cr>',        { silent = true, desc = 'hmake install'})
vim.keymap.set('n', '<leader>mh', ':silent :! hmake all && hmake install<cr>', { silent = true, desc = 'hmake all & install (silent)'})
vim.keymap.set('n', '<leader>ml', ':! hmake all && hmake install<cr>',         { silent = true, desc = 'hmake all & install (loud)'})

-- -----------------------------------------------------------------------------
--
-- vim.keymap.del('n', '<leader>e')
-- vim.keymap.del('n', '<leader>E')
-- vim.keymap.set('n', '<leader>E', function() require("neo-tree.command").execute({toggle = true, dir = require("lazyvim.util").root()}) end, { silent = true, desc = "Explorer (my root dir)"})
-- vim.keymap.set('n', '<leader>e', function() require("neo-tree.command").execute({toggle = true, dir = vim.loop.cwd()}) end, { silent = true, desc = "Explorer (my cwd)"})
-- vim.keymap.set('n', '<leader>ec', function() require("neo-tree.command").execute({toggle = true, reveal_path = "%:p"}) end, { silent = true, desc = "Explorer (current dir)" })
-- vim.keymap.del('n', '<leader>e')
