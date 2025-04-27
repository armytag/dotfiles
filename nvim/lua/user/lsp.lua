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
    lsp_map(bufnr, 'n', '<leader>dD', ':lua vim.lsp.buf.declaration()<CR>')
    lsp_map(bufnr, 'n', '<leader>dt', ':lua vim.lsp.buf.type_definition()<CR>')
    lsp_map(bufnr, 'n', '<leader>dd', ':lua vim.lsp.buf.definition()<CR>')
    lsp_map(bufnr, 'n', '<leader>K', ':lua vim.lsp.buf.definition()<CR>')
    lsp_map(bufnr, 'n', '<leader>k', ':lua vim.lsp.buf.hover()<CR>')
    lsp_map(bufnr, 'n', '<leader>di', ':lua vim.lsp.buf.implementation()<CR>')
    lsp_map(bufnr, 'n', '<leader>dwa', ':lua vim.lsp.buf.add_workspace_folder()<CR>')
    lsp_map(bufnr, 'n', '<leader>dwr', ':lua vim.lsp.buf.remove_workspace_folder()<CR>')
    lsp_map(bufnr, 'n', '<leader>dwl', ':lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
    lsp_map(bufnr, 'n', '<leader>dn', ':lua vim.lsp.buf.rename()<CR>')
    lsp_map(bufnr, 'n', '<leader>da', ':lua vim.lsp.buf.code_action()<CR>')
    lsp_map(bufnr, 'n', '<leader>dr', ':lua vim.lsp.buf.references()<CR>')
    lsp_map(bufnr, 'n', '<leader>df', ':lua vim.lsp.buf.formatting()<CR>')
end

local lua_path = vim.split(package.path, ';')
table.insert(lua_path, 'lua/?.lua')
table.insert(lua_path, 'lua/?/init.lua')

local servers = {
    -- emmet-language-server
    {
        name = 'emmet_language_server',
        settings = {}
    },
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
                    flake8 = { enabled = true, maxLineLength = 88 },
                    pycodestyle = { enabled = false },
                    pyflakes = { enabled = false },
                    pylsp_mypy = { enabled = true },
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
        name = 'ts_ls',
        cmd = {'typescript-language-server', '--stdio'},
        settings = {
            implicitProjectConfiguration = {
                checkJs = true
            },
        },
    },
}

for _, lsp in pairs(servers) do
    if lsp.cmd ~= nil then
        lspconfig[lsp.name].setup {
            on_attach = custom_attach,
            flags = {
                debounce_text_changes = 150,
            },
            cmd = lsp.cmd,
            settings = lsp.settings,
        }
    else
        lspconfig[lsp.name].setup {
            on_attach = custom_attach,
            flags = {
                debounce_text_changes = 150,
            },
            settings = lsp.settings,
        }
    end
end

