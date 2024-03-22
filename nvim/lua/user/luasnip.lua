local ls = require"luasnip"
local s = ls.snippet
local sn = ls.snippet_node
-- local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
-- local f = ls.function_node
-- local c = ls.choice_node
local d = ls.dynamic_node
-- local r = ls.restore_node
-- local events = require("luasnip.util.events")
-- local ai = require("luasnip.nodes.absolute_indexer")
-- local extras = require("luasnip.extras")
-- local l = extras.lambda
-- local rep = extras.rep
-- local p = extras.partial
-- local m = extras.match
-- local n = extras.nonempty
-- local dl = extras.dynamic_lambda
-- local fmt = require("luasnip.extras.fmt").fmt
-- local fmta = require("luasnip.extras.fmt").fmta
-- local conds = require("luasnip.extras.expand_conditions")
-- local postfix = require("luasnip.extras.postfix").postfix
-- local types = require("luasnip.util.types")
-- local parse = require("luasnip.util.parser").parse_snippet
-- local ms = ls.multi_snippet
-- local k = require("luasnip.nodes.key_indexer").new_key

ls.config.set_config {
    history = true,
    updateevents = "TextChanged,TextChangedI",
    enable_autosnippets = true,
}

-- CTRL-J for expansion and jumping forward
vim.keymap.set({ "i", "s" }, "<C-j>", function ()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

-- CTRL-K for going back one snippet
vim.keymap.set({ "i", "s" }, "<C-k>", function ()
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
vim.keymap.set("n", "<leader>ss", "<cmd>source ~/.config/nvim/lua/user/luasnip.lua<CR>")

-- Reset snippets
require("luasnip.session.snippet_collection").clear_snippets "lua"
require("luasnip.session.snippet_collection").clear_snippets "javascript"

-- Lua snippets
ls.add_snippets("lua", {
    s("same", {
        t "Input: (",
        i(1, "test"),
        t {")", ""},
    }),
})

-- Javascript snippets
local dyn_params = function (position, references)
    return d(position, function (params)
        local nodes = {}
        local parts = vim.split(params[1][1], ", ", true)
        print(vim.inspect(arg))
        print(vim.inspect(parts))
        for idx, value in pairs(parts) do
            table.insert(nodes, t {"", " * @param {"})
            table.insert(nodes, i(idx, "type"))
            table.insert(nodes, t "} ")
            table.insert(nodes, t(value))
        end
        return sn(nil, nodes)
    end, references)
end

ls.add_snippets("javascript", {
    s( "doc", {
        t {"/**", " * "} ,
        i(3, "Description"),
        dyn_params(4, {2}),
        t {"", " */", "function "},
        i(1, "func"),
        t "(",
        i(2, "params"),
        t {") {", "\t"},
        i(0, ""),
        t {"", "}"},
    }),
})
