-- Plugins

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- plenary
    "nvim-lua/plenary.nvim",
    -- Comment.nvim
    "numToStr/Comment.nvim",
    -- treesitter
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    -- gitsigns
    "lewis6991/gitsigns.nvim",
    -- lspconfig
    "neovim/nvim-lspconfig",
    "onsails/lspkind.nvim",
    -- telescope
    "nvim-telescope/telescope.nvim",
    -- nvim-cmp
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-cmdline",
    "saadparwaiz1/cmp_luasnip",
    -- LuaSnip
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    -- harpoon2
    {"ThePrimeagen/harpoon", branch = "harpoon2"},
    -- vim-godot
    "habamax/vim-godot",
    -- Colorschemes
    "cryptomilk/nightcity.nvim",
    "tiagovla/tokyodark.nvim",
    "folke/tokyonight.nvim",
    "vimpostor/vim-prism",
    "sontungexpt/witch",
    "glepnir/zephyr-nvim",
    -- Zen Mode
    "folke/zen-mode.nvim",
    "folke/twilight.nvim",
})

require('Comment').setup()
-- luaPlug('colorschemes')
-- luaPlug('custom-theme')
-- luaPlug('prism')
-- luaPlug('nvim-cmp')
-- luaPlug('lspconfig')
-- luaPlug('lua-snip')
-- luaPlug('vim-godot')
-- luaPlug('treesitter')
-- luaPlug('plenary')
-- luaPlug('telescope')
-- luaPlug('gitsigns')
-- luaPlug('harpoon')

