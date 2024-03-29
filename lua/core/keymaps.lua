local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

-- Write file --
keymap("n", "<leader>w", ":w<CR>", opts)

-- Nvim tree file explorer on the left
keymap("n", "<leader>e", "<cmd> NvimTreeToggle <cr>", opts)

-- Resize Arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Navigate Buffers
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<leader>bql", ":BufferLineCloseLeft<CR>", opts)
keymap("n", "<leader>bqr", ":BufferLineCloseRight<CR>", opts)
keymap("n", "<leader>q", ":bd % <CR>", opts)

-- Insert --
keymap("i", "jj", "<Esc>", opts)

-- Visual
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "J", ":m .-2<CR>==", opts)
keymap("v", "K", ":m .+1<CR>==", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Telescope keymaps
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap('n', '<leader>gf', '<cmd>Telescope git_files<cr>', opts)
keymap('n', '<leader>bg', '<cmd>Telescope current_buffer_fuzzy_find<cr>', opts)

-- Ctrl-u and Ctrl-d
keymap('n', '<C-d>', '<C-d>zz', opts)
keymap('n', '<C-u>', '<C-u>zz', opts)

-- Greatest remap ever
keymap('n', '<leader>p', '\'_dP', opts)

--#region Terminal
keymap("n", "<leader>g", "<cmd>lua LAZY_GIT()<cr>", opts)
--#endregion


--[[
--  - Normal Mode Mappings.
-- 'gcc' - Toggles the current line using linewise comment.
-- 'gbc' - Toggles the current line using blockwise comment.
--  [count]gcc - Toggles the number of line given as a prefix-count using linewise.
--  [count]gbc - Toggles the number of line given as a prefix-count using blockwise.
--  [count]gbc - Toggles the number of line given as a prefix-count using blockwise.
--
--  - Visual Mode
-- 'gc' - Toggles the region using linewise comment
-- 'gb' - Toggles the region using blockwise comment
--]]
