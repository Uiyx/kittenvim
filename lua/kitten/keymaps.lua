local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- remap the leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- normal (n) --

-- better split/vsplit navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", opts)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", opts)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", opts)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", opts)

-- visual (v) --

-- move text up and down
vim.api.nvim_set_keymap("v", "<A-j>", ":m .+1<CR>==", opts)
vim.api.nvim_set_keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- better visual pasting
vim.api.nvim_set_keymap("v", "p", '"_dP', opts)

-- visual Block (Ctrl-v) ---

-- move text up and down
vim.api.nvim_set_keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
vim.api.nvim_set_keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
vim.api.nvim_set_keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
vim.api.nvim_set_keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- telescope
vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({}))<cr>", opts)
vim.api.nvim_set_keymap("n", "<C-t>", "<cmd>lua require'telescope.builtin'.live_grep(require('telescope.themes').get_ivy({}))<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>m", "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>", opts)

-- Nvimtree
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
