local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("没有找到 nvim-tree")
  return
end

nvim_tree.setup({
    -- 不显示 git 状态图标
    git = {
        enable = true,
    },

    -- 隐藏 .文件 和 node_modules 文件夹
    filters = {
        dotfiles = false,
        custom = { 'node_modules', },
    },

   update_focused_file = {
     enable = true,
     update_cwd = true,
   },

    actions = {
        open_file = {
            -- 首次打开大小适配
            resize_window = true,
            -- 打开文件时关闭
            quit_on_open = false,
        },
    },

})
