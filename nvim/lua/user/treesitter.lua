-- Configure treesitter
require'nvim-treesitter.configs'.setup({
    ensure_installed = { "lua", "rust" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})

