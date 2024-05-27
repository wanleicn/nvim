require('nvim_comment').setup({
    --- 忽略空白行
    comment_empty = false, 
    --- 添加对verilog,python的支持        
    hook = function()
        if vim.api.nvim_buf_get_option(0, "filetype") == "verilog" then
            vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
        elseif vim.api.nvim_buf_get_option(0, "filetype") == "python" then
            vim.api.nvim_buf_set_option(0, "commentstring", "# %s")
        end
    end
})

