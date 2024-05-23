local opt = vim.opt

--- UI Config ------------------------------------------------------------------------------------
-- opt.relativenumber  = true           -- add numbers to each line on the left side
opt.number          = true           -- show absolute numbers
opt.cursorline      = true           -- highlight cursor line underneath the cursor horizontally
opt.clipboard       = 'unnamedplus'  -- use system clipboard
opt.completeopt     = {'menu', 'menuone', 'noselect'}
opt.mouse           = 'a'            -- allow the mouse to be used in Nvim
opt.termguicolors   = true           -- 终端真颜色

--- Tab ------------------------------------------------------------------------------------------
opt.tabstop     = 4                  -- number of visual spaces per TAB
opt.softtabstop = 4                  -- number of spacesin tab when editing
opt.shiftwidth  = 4                  -- insert 4 spaces on a tab
opt.expandtab   = true               -- tabs are spaces, mainly because of python

--- Searching ------------------------------------------------------------------------------------
opt.incsearch   = true               -- search as characters are entered
opt.hlsearch    = true               -- do not highlight matches
opt.ignorecase  = true               -- ignore case in searches by default
opt.smartcase   = true               -- but make it case sensitive if an uppercase is entered


-- Other
