local map = function(mode, key, value)
    vim.api.nvim_set_keymap(mode, key, value, { noremap = true, silent = true })
end

-- Language Servers
local lspconfig = require('lspconfig')
map('n', '<leader>ef', ':lua vim.diagnostic.open_float()<CR>')
map('n', '<leader>ek', ':lua vim.diagnostic.goto_prev()<CR>')
map('n', '<leader>ej', ':lua vim.diagnostic.goto_next()<CR>')
map('n', '<leader>el', ':lua vim.diagnostic.setloclist()<CR>')

local lsp_map = function(bufnr, mode, key, value)
    vim.api.nvim_buf_set_keymap(bufnr, mode, key, value, { noremap = true, silent = true })
end

local custom_attach = function(client, bufnr)
    print('Built-in LSP started.')
    lsp_map(bufnr, 'n', ';gD', ':lua vim.lsp.buf.declaration()<CR>')
    lsp_map(bufnr, 'n', ';gd', ':lua vim.lsp.buf.definition()<CR>')
    lsp_map(bufnr, 'n', ';k', ':lua vim.lsp.buf.hover()<CR>')
    lsp_map(bufnr, 'n', ';gi', ':lua vim.lsp.buf.implementation()<CR>')
    lsp_map(bufnr, 'n', ';K', ':lua vim.lsp.buf.definition()<CR>')
    lsp_map(bufnr, 'n', ';wa', ':lua vim.lsp.buf.add_workspace_folder()<CR>')
    lsp_map(bufnr, 'n', ';wr', ':lua vim.lsp.buf.remove_workspace_folder()<CR>')
    lsp_map(bufnr, 'n', ';wl', ':lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
    lsp_map(bufnr, 'n', ';D', ':lua vim.lsp.buf.type_definition()<CR>')
    lsp_map(bufnr, 'n', ';rn', ':lua vim.lsp.buf.rename()<CR>')
    lsp_map(bufnr, 'n', ';ca', ':lua vim.lsp.buf.code_action()<CR>')
    lsp_map(bufnr, 'n', ';gr', ':lua vim.lsp.buf.references()<CR>')
    lsp_map(bufnr, 'n', ';f', ':lua vim.lsp.buf.formatting()<CR>')
end

local lua_path = vim.split(package.path, ';')
table.insert(lua_path, 'lua/?.lua')
table.insert(lua_path, 'lua/?/init.lua')

local servers = {
    -- Godot GDScript LSP Settings
    {
        name = 'gdscript',
        settings = {},
    },
    -- Lua LSP Settings
    {
        name = 'lua_ls',
        settings = {
            Lua = {
                runtime = {
                    version = 'LuaJIT',
                },
                diagnostics = {
                    globals = { 'vim' },
                },
                workspace = {
                    checkThirdParty = false,
                    library = {
                        vim.api.nvim_get_runtime_file('', true),
                        "${3rd}/love2d/library",
                    }
                },
--                telemetry = {
--                    enable = false,
--                },
            },
        },
    },
    -- Python LSP Settings
    {
        name = 'pylsp',
        settings = {
            pylsp = {
                configurationSources = { "flake8" },
                plugins = {
                    pylint = { enabled = false },
                    flake8 = { enabled = true },
                    pycodestyle = { enabled = false },
                    pyflakes = { enabled = false },
                },
            },
        },
    },
    -- Rust LSP Settings
    {
        name = 'rust_analyzer',
        settings = {
            ['rust-analyzer'] = {},
        },
    },
    -- Typescript LSP Settings
    {
        name = 'tsserver',
        settings = {
        },
    },
}

for _, lsp in pairs(servers) do
    lspconfig[lsp.name].setup {
        on_attach = custom_attach,
        flags = {
            debounce_text_changes = 150,
        },
        settings = lsp.settings,
    }
end

