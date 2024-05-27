    require("mason").setup()

    require("mason").setup({
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    })

    require("mason-lspconfig").setup({
        ensure_installed = {
            "verible",
            "pyright",
        },
    })
    local lspconfig = require('lspconfig')

    require("mason-lspconfig").setup_handlers {
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function (server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {}
        end,
        -- Next, you can provide a dedicated handler for specific servers.
        -- For example, a handler override for the `rust_analyzer`:
        ["verible"] = function ()
            lspconfig.verible.setup{
              cmd = {'verible-verilog-ls', "--rules_config=C:/Users/Ray/AppData/Local/nvim/config/.rules.verible_lint"},
                root_dir = function(fname)
                    return lspconfig.util.root_pattern(".git")(fname) or lspconfig.util.path.dirname(fname)
                end,
                autostart = true,
            }
        end,

        ["pyright"] = function ()
            lspconfig.pyright.setup{
                settings = {
                python = {
                    analysis = {
                    autoSearchPaths = true,          -- 自动搜索路径
                    diagnosticMode = "workspace",    -- 诊断模式设为工作区级别
                    useLibraryCodeForTypes = true,   -- 使用库代码进行类型推断
                    typeCheckingMode = "off",        -- 关闭类型检查模式
                  }
                }
              },
                autostart = true,
            }
        end,
    }


------------------------------------------------------------------------------------------
-- Old Configuration
------------------------------------------------------------------------------------------


-- 设置语言服务器
-- local lspconfig = require('lspconfig')

-- lspconfig.pyright.setup{}
-- lspconfig.verible.setup{
--     root_dir = function(fname)
--         return lspconfig.util.root_pattern(".git")(fname) or lspconfig.util.path.dirname(fname)
--     end,


--     on_attach = function(client, bufnr)
--         local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
--         local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

--         -- 启用补全触发
--         buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
--         -- 绑定快捷键
--         -- local opts = { noremap=true, silent=true }
--         -- buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--         -- buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
--         -- buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
--         -- buf_set_keymap('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--         -- buf_set_keymap('n', '<C-k>', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--         -- buf_set_keymap('n', '<space>wa', '<Cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
--         -- buf_set_keymap('n', '<space>wr', '<Cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
--         -- buf_set_keymap('n', '<space>wl', '<Cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
--         -- buf_set_keymap('n', '<space>D', '<Cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
--         -- buf_set_keymap('n', '<space>rn', '<Cmd>lua vim.lsp.buf.rename()<CR>', opts)
--         -- buf_set_keymap('n', '<space>ca', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)
--         -- buf_set_keymap('n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
--         -- buf_set_keymap('n', '<space>e', '<Cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
--         -- buf_set_keymap('n', '[d', '<Cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
--         -- buf_set_keymap('n', ']d', '<Cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
--         -- buf_set_keymap('n', '<space>q', '<Cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
--         -- buf_set_keymap('n', '<space>z', '<Cmd>lua vim.lsp.buf.formatting()<CR>', opts)
--     end,
--     autostart = true
-- }
