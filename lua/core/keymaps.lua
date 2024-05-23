local keymap = vim.keymap
--- leader keymap ---
-- vim.g.mapleader = " "

--- 插入模式 ---
keymap.set("i", "<C-z>"     , "<ESC>:u<CR>i")
keymap.set("i", "<C-s>"     , "<ESC>:w<CR>")                                -- Save


--- 可视模式 ---
keymap.set("v", "J"         , ":m '>+1<CR>gv=gv")                           -- 单行或者多行移动
keymap.set("v", "K"         , ":m '>-2<CR>gv=gv")                           -- 单行或者多行移动
keymap.set("v", "<leader>f" , "y:/<C-r>*<cr >")                             -- 搜索
keymap.set("v", "<C-z>"     , "<ESC>:u<CR>")                                -- 撤销


--- 正常模式 ---
keymap.set("n", "<C-b>"     , "<cmd>NvimTreeToggle<cr>", { silent = true }) -- 开关目录
keymap.set("n", "<leader>sv", "<C-w>v")                                     -- 水平创建窗口
keymap.set("n", "<leader>sh", "<C-w>s")                                     -- 垂直创建窗口
keymap.set("n", "wc"        , ":close<cr>")                                 -- 关闭当前窗口
keymap.set("n", "ww"        , "<C-w>w")                                     -- 切换窗口焦点
keymap.set("n", "<Space>"   , ":bn<cr>")                                    -- 切换当前Buffer
keymap.set("n", "<TAB>d"    , ":bd<cr>")                                    -- 关闭当前Buffer
keymap.set("n", "<C-z>"     , "<ESC>:u<CR>")                                -- 撤销
keymap.set("n", "<C-a>"     , "ggVG")                                       -- 全选
keymap.set("n", "nh"        , ":nohl<CR>")                                  -- 取消高亮
keymap.set("n", "<C-q>"     , ":q<CR>")                                     -- 退出
keymap.set("n", "<C-Q>"     , ":q<cr>")                                     -- 退出


--- 插件相关 ---
keymap.set("v", "<leader>a" , ":Tabularize /")                              -- 对齐 + / 左对齐， r0右对齐
keymap.set("n", "<C-_>"     , ":CommentToggle<CR>")                         -- 注释 Ctrl + /
keymap.set("v", "<C-_>"     , ":CommentToggle<CR>")                         -- 注释
keymap.set("i", "<C-_>"     , "<ESC>:CommentToggle<CR>i")                   -- 注释
keymap.set("i", "<F12>"     , "<ESC>:Telescope colorscheme<cr>")            -- 注释
keymap.set("n", "<F12>"     , ":Telescope colorscheme<cr>")                 -- 注释
keymap.set("v", "<F12>"     , "<ESC>:Telescope colorscheme<cr>")            -- 注释
keymap.set("n", "<Home>"    , ":Alpha<cr>")                                 -- Open Deshboard
keymap.set("n", "<C-k>"     , ":WhichKey<cr>")                              -- 查看快捷键
keymap.set("n", "ff"        , ":Telescope find_files<cr>")                  -- Telescope 查找文件
keymap.set("n", "fg"        , ":Telescope live_grep<cr>")                   -- Telescope 查找文件
keymap.set("n", "fb"        , ":Telescope buffers<cr>")                     -- Telescope 查找Buffer
keymap.set("n", "fh"        , ":Telescope help_tags<cr>")                   -- Telescope 查找帮助文件
keymap.set("n", "fp"        , ":Telescope projects<cr>")                    -- Telescope 打开工程




--- 混合模式 ---
keymap.set({"v", "n"}, "<C-s>"  , "<ESC>:w<CR>")                            -- Save
keymap.set({"v", "n"}, "<C-s>"  , "<ESC>:w<CR>")                            -- Save
keymap.set({"v", "n"}, "<C-z>"  , "<ESC>:u<CR>")                            -- Undo
keymap.set({"i", "v"}, "jk"     , "<ESC>")                                  -- Key Map ESC



--- 其他 ---
keymap.set("n", "<F5>"          , ":!python %<cr>")                            -- 运行当前的Python文件
keymap.set("n", "so"            , ":so %<cr>")                                 -- source find
keymap.set({"i","v","n"},"<C-A-t>", "<ESC>:10 split | terminal<CR><C-W>J | i") -- 打开终端 
