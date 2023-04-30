vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fw', ':Telescope live_grep<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fs', ':Telescope grep_string<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fo', ':Telescope oldfiles<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>u', ':UndotreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>h', ':bprevious<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>l', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader><C-p>', ':MarkdownPreviewToggle<CR>', {noremap = true, silent = true})
