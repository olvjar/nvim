--[[ Neovim keymaps ]]

local g = vim.g
local opt = vim.opt
local keymap = vim.keymap.set

-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)

g.mapleader = ' '
g.maplocalleader = ' '

-- Set highlight on search
opt.hlsearch = true
keymap('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
keymap('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode
keymap('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Window commands
keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Quick save
keymap('n', '<leader>s', ':w<CR>')

--[[ Plugin shortcuts ]]

-- Neotree
keymap('n', '<leader>n', 'Neotree') -- open ntree

-- Lazy.nvim
keymap('n', '<leader>l', '<cmd>:Lazy<cr>') -- open lazy.nvim
