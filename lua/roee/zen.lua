vim.keymap.set('n', '<leader>zz', function()
    require("zen-mode").setup({
        window = {
            width = 120,
            options = {}
        }
    })
    require("zen-mode").toggle()
    vim.opt.colorcolumn = "120"
end)
require("zen-mode").setup({
    window = {
        width = 120,
        options = {}
    }
})
require("zen-mode").toggle()
vim.opt.colorcolumn = "120"

