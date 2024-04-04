-- Harpoon setup
local harpoon = require("harpoon")
harpoon.setup()

local map = function(mode, key, value)
    vim.keymap.set(mode, key, value)
end

map('n', '<leader>h', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
map('n', '<A-h>', function() harpoon:list():append() end)
map('n', '<A-j>', function() harpoon:list():select(1) end)
map('n', '<A-k>', function() harpoon:list():select(2) end)
map('n', '<A-l>', function() harpoon:list():select(3) end)
map('n', '<A-;>', function() harpoon:list():select(4) end)
map('n', '<C-P>', function() harpoon:list():prev() end)
map('n', '<C-N>', function() harpoon:list():next() end)
