vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({
    git =  {
        enable = true,
        ignore = false,
    },
})

vim.keymap.set("n", "<leader>tt", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>tc", vim.cmd.NvimTreeClose)
vim.keymap.set("n", "<leader>tr", vim.cmd.NvimTreeRefresh)
vim.keymap.set("n", "<leader>tf", vim.cmd.NvimTreeFindFile)

