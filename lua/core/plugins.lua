-----------------------------------------------------------
-- Lazy Start
-----------------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-----------------------------------------------------------
-- Plugins Install List
-----------------------------------------------------------
require("lazy").setup({
    -- 主题
    "ellisonleao/gruvbox.nvim",
    "embark-theme/vim",
    "tanvirtin/monokai.nvim",
    "hardhackerlabs/theme-vim",
    "Mofiqul/vscode.nvim",

    -- 让Neovim背景变透明，如果你需要透明的UI或者模糊背景的效果，就需要用上这个插件
    -- { "xiyaowong/nvim-transparent" },
    
    -- 一个超快的状态栏美化插件
    {
      "nvim-lualine/lualine.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
        require("lualine").setup {}
      end
    },
    -- 文件管理器
    {
      "nvim-tree/nvim-tree.lua",
      version = "*",
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
      config = function()
        require("nvim-tree").setup {}
      end
    },
    -- Buffer（文件）Tab 显示插件
    {
      "willothy/nvim-cokeline",
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
    },

    -- 代码语法高亮，支持多种语言
    { "nvim-treesitter/nvim-treesitter" },

    -- 平滑滚动插件
    { "karb94/neoscroll.nvim" },

    -- 光标位于一个词语时，页面上其他同一个词语加下划线
--    { 'RRethy/vim-illuminate' },

    -- bufferline
    {'akinsho/bufferline.nvim',
      version = "*", 
      dependencies = 'nvim-tree/nvim-web-devicons',
      config = function()
        require("bufferline").setup {}
      end
    },
    
    -- 文件模糊搜索悬浮
    {
      'nvim-telescope/telescope.nvim', tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' },       
    },
    
    -- 紫色框突出当前窗口
    {
      "nvim-zh/colorful-winsep.nvim",
      config = true,
      event = { "WinNew" },
    },
    
    -- 对齐
    "godlygeek/tabular",
    
    -- 注释
    "terrortylor/nvim-comment", 

    -- "" surround
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },

    "vhda/verilog_systemverilog.vim",

    "tomasky/bookmarks.nvim",     -- 书签
    
    {'lewis6991/gitsigns.nvim',    -- git 插件，显示变更信息

        -- config = function()
        --     require("gitsigns").setup({
        --         -- Configuration here, or leave empty to use defaults
        --     })
        -- end
    },


    -- Start Screen & Deshboard
    {
        'goolord/alpha-nvim',
         config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
         end
    },

    -- 快捷键提示
    {
      "folke/which-key.nvim",
      event = "VeryLazy",
      init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
      end,
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    }, 
    
    -- {
    --   "ibhagwan/fzf-lua",
    --   -- optional for icon support
    --   dependencies = { "nvim-tree/nvim-web-devicons" },
    --   config = function()
    --     -- calling `setup` is optional for customization
    --     require("fzf-lua").setup({})
    --   end
    -- },

    -- 'terryma/vim-multiple-cursors', -- 多行编辑


    -----------------------------------------------------
    -- LSP for verilog,
    "neovim/nvim-lspconfig",
    'neoclide/coc.nvim',
})
