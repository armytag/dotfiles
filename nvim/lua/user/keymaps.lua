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
nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-l>', '<C-w>l')

-- Window Movement
nmap('<C-w>h', '<C-w>H')
nmap('<C-w>j', '<C-w>J')
nmap('<C-w>k', '<C-w>K')
nmap('<C-w>l', '<C-w>L')

-- Terminal Bindings
tmap('<Esc>', '<C-\\><C-n>')
-- Terminal Window Movement
tmap('<C-h>', '<C-\\><C-n><C-w>h')
tmap('<C-j>', '<C-\\><C-n><C-w>j')
tmap('<C-k>', '<C-\\><C-n><C-w>k')
tmap('<C-l>', '<C-\\><C-n><C-w>l')
tmap('<C-w>h', '<C-\\><C-n><C-w>H')
tmap('<C-w>j', '<C-\\><C-n><C-w>J')
tmap('<C-w>k', '<C-\\><C-n><C-w>K')
tmap('<C-w>l', '<C-\\><C-n><C-w>L')
