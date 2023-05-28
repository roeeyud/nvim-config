vim.g.undotree_WindowLayout = 2
vim.keymap.set('n', '<leader>u', function() 
    vim.cmd.UndotreeToggle()
    vim.cmd.UndotreeFocus()
end)
local wk = require("which-key")
wk.register({
    name = "undo",            -- optional group name
    u = { "Open undo tree" }, -- create a binding with label
}, { prefix = "<leader>" })
