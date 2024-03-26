-- Plugins
local luaPlug = function(file)
    vim.cmd('luafile ~/.config/nvim/lua/user/plugs/'..file..'.lua')
end

vim.call('plug#begin', '~/.config/nvim/plugged')

-- luaPlug('tokyodark')
luaPlug('colorschemes')
luaPlug('prism')
luaPlug('nvim-cmp')
luaPlug('lspconfig')
luaPlug('lua-snip')
luaPlug('vim-godot')
luaPlug('treesitter')
luaPlug('plenary')
luaPlug('telescope')
luaPlug('gitsigns')
luaPlug('harpoon')

vim.call('plug#end')
