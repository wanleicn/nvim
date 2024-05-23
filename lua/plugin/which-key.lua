local wk = require("which-key")
wk.register({

    s = {
        name = "Source files",
        o = {"Source current file "}
    },

    f = {
        name = "Telescope",
        f = {"Find Files"},
        b = {"Buffers"},
        h = {"Help tags"},
        g = {"Live Grep"},
        p = {"Projects"}
    },

    m = {
        name = "Bookmark",
        m = {"Add or remove bookmark at current line"},
        i = {"Add or edit bookmark annotation"},
        c = {"Clean all marks in local buffer"},
        n = {"Jump next bookmark in local buffer"},
        p = {"Jump previous bookmark in local buffer"},
        l = {"Show marked file list"},
        x = {"Remove all bookmarks"}
    }

})




