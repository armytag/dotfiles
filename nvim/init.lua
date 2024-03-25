-- Helper functions for reloading source files resources
local stop_lsp = function()
    vim.lsp.stop_client(vim.lsp.get_active_clients())
end

_G.ReloadConfig = function()
    stop_lsp()
    for name, _ in pairs(package.loaded) do
        if name:match('^user') then
            package.loaded[name] = nil
        end
    end

    dofile(vim.env.MYVIMRC)
end

-- Settings
require('user.options')
require('user.keymaps')
require('user.plugins')
require('user.lsp')
require('user.nvim-cmp')
require('user.luasnip')
require('user.treesitter')
require('user.gitsigns')
require('user.harpoon')

-- Colors
vim.cmd('colorscheme tokyodark')
