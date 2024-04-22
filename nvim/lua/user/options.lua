-- General Settings
vim.opt.hidden = true

-- Mouse
vim.opt.mouse = 'a'
vim.opt.mousefocus = true

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.go.scrolloff = 8

-- Tabs & Indentation
vim.opt.expandtab = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = -1
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.signcolumn = 'yes'

-- Terminal and Shell
vim.opt.shell = '/bin/zsh'

-- Clipboard
vim.opt.clipboard = 'unnamedplus'

-- Language settings
if(os.getenv("CONDA_PREFIX"))
then
	vim.g.python3_host_prog = os.getenv("CONDA_PREFIX") .. "/bin/python"
end
