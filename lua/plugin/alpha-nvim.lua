-- alpha-config.lua

local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
 return
end


local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
---------------------------------------------------------------------------------------
-- Text to ASCII Web Site
-- https://patorjk.com/software/taag/#p=testall&h=1&f=3D%20Diagonal&t=WANLEI
-- https://github.com/nvimdev/dashboard-nvim/wiki/Ascii-Header-Text
---------------------------------------------------------------------------------------

    -- [[          ▀████▀▄▄              ▄█ ]],
    -- [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
    -- [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
    -- [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
    -- [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
    -- [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
    -- [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
    -- [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
    -- [[   █   █  █      ▄▄           ▄▀  custom by WanLei ]],

    [[      ___          ___          ___                       ___                 ]],
    [[     /__/\        /  /\        /__/\                     /  /\       ___      ]],  
    [[    _\_ \:\      /  /::\       \  \:\                   /  /:/_     /  /\     ]], 
    [[   /__/\ \:\    /  /:/\:\       \  \:\   ___     ___   /  /:/ /\   /  /:/     ]], 
    [[  _\_ \:\ \:\  /  /:/~/::\  _____\__\:\ /__/\   /  /\ /  /:/ /:/_ /__/::\     ]], 
    [[ /__/\ \:\ \:\/__/:/ /:/\:\/__/::::::::\\  \:\ /  /://__/:/ /:/ /\\__\/\:\__  ]], 
    [[ \  \:\ \:\/:/\  \:\/:/__\/\  \:\~~\~~\/ \  \:\  /:/ \  \:\/:/ /:/   \  \:\/\ ]], 
    [[  \  \:\ \::/  \  \::/      \  \:\  ~~~   \  \:\/:/   \  \::/ /:/     \__\::/ ]], 
    [[   \  \:\/:/    \  \:\       \  \:\        \  \::/     \  \:\/:/      /__/:/  ]], 
    [[    \  \::/      \  \:\       \  \:\        \__\/       \  \::/       \__\/   ]], 
    [[     \__\/        \__\/        \__\/                     \__\/                ]],
    [[                                                                              ]],
    [[                                                         —— custom by WanLei  ]],

}

 dashboard.section.buttons.val = {
   dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
   dashboard.button("f", "󰮗  Find file", ":Telescope find_files <CR>"),
   dashboard.button("q", "󰰚  Projects", ":Telescope projects<CR>"),
   dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
   dashboard.button("t", "󰊄  Find text", ":Telescope live_grep <CR>"),
   dashboard.button("c", "  Configuration", ":e ~/AppData/Local/nvim/init.lua<CR>"),
   dashboard.button("q", "󰿅  Quit Neovim", ":qa<CR>"),
}

local function footer()
 return "Love the life you live. Live the life you love..."
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
