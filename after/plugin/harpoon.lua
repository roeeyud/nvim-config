local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set("n", "<leader>a", mark.add_file) 
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu) 
vim.keymap.set("n", "<leader>h", function() ui.nav_next() end) 
vim.keymap.set("n", "<leader>l", function() ui.nav_prev() end) 
local wk = require("which-key")
wk.register({
    ["<leader>a"] = { "Add file to harpoon" }, -- special label to hide it in the popup
    ["<leader>e"] = { "Toggle harpoon menu" }, -- special label to hide it in the popup
    ["<leader>h"] = { "Go to next harpoon mark" }, -- special label to hide it in the popup
    ["<leader>l"] = { "Go to previous harpoon mark" }, -- special label to hide it in the popup
})
