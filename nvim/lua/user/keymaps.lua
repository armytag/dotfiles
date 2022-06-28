-- Utility functions
local map = vim.api.nvim_set_keymap

local nmap = function(shortcut, command)
    map('n', shortcut, command, { noremap = true, silent = true })
end

local imap = function(shortcut, command)
    map('i', shortcut, command, { noremap = true, silent = true })
end

local tmap = function(shortcut, command)
    map('t', shortcut, command, { noremap = true, silent = true })
end

-- General Keybindings
vim.g.mapleader = ' '
imap('jk', '<Esc>')
nmap('<leader>o', 'm`o<Esc>``')
nmap('<leader>O', 'm`O<Esc>``')
nmap('<leader>vs', ':lua ReloadConfig()<CR>')
nmap('<leader>gb', '<C-^>')

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Window Navigation
nmap('<A-h>', '<C-w>h')
nmap('<A-j>', '<C-w>j')
nmap('<A-k>', '<C-w>k')
nmap('<A-l>', '<C-w>l')

-- Window Movement
nmap('<A-w>h', '<C-w>H')
nmap('<A-w>j', '<C-w>J')
nmap('<A-w>k', '<C-w>K')
nmap('<A-w>l', '<C-w>L')

-- Terminal Bindings
tmap('<Esc>', '<C-\\><C-n>')
-- Terminal Window Movement
tmap('<A-h>', '<C-\\><C-n><C-w>h')
tmap('<A-j>', '<C-\\><C-n><C-w>j')
tmap('<A-k>', '<C-\\><C-n><C-w>k')
tmap('<A-l>', '<C-\\><C-n><C-w>l')
tmap('<A-w>h', '<C-\\><C-n><C-w>H')
tmap('<A-w>j', '<C-\\><C-n><C-w>J')
tmap('<A-w>k', '<C-\\><C-n><C-w>K')
tmap('<A-w>l', '<C-\\><C-n><C-w>L')
