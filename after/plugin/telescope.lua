local builtin = require('telescope.builtin')
local wk = require("which-key")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
wk.register({
    f = {
        name = "file",           -- optional group name
        f = { "Find File" },     -- create a binding with label
        s = { "Search String" }, -- create a binding with label
    },
}, { prefix = "<leader>" })
