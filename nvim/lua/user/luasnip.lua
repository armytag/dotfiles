local ls = require"luasnip"
-- local types = require"luasnip.util.types"

ls.config.set_config {
    history = true,
    updateevents = "TextChanged,TextChangedI",
    enable_autosnippets = true,
}

-- CTRL-K for expansion and jumping forward
vim.keymap.set({ "i", "s" }, "<C-k>", function ()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

-- CTRL-J for going back one snippet
vim.keymap.set({ "i", "s" }, "<C-j>", function ()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })

-- CTRL-L for changing snippet choice
vim.keymap.set("i", "<C-l>", function ()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end)

-- Reloading snippets file
vim.keymap.set("n", "<leader>ss", "<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<CR>")
