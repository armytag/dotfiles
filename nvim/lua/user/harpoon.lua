-- Harpoon setup
local harpoon = require("harpoon")
harpoon.setup()

local map = function(mode, key, value)
    vim.keymap.set(mode, key, value)
end

map('n', '<leader>hh', function() harpoon:list():append() end)
map('n', '<leader>he', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
map('n', '<leader>ha', function() harpoon:list():select(1) end)
map('n', '<leader>hs', function() harpoon:list():select(2) end)
map('n', '<leader>hd', function() harpoon:list():select(3) end)
map('n', '<leader>hf', function() harpoon:list():select(4) end)
map('n', '<leader>hp', function() harpoon:list():prev() end)
map('n', '<leader>hn', function() harpoon:list():next() end)
