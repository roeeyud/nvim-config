vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
local wk = require("which-key")
wk.register({
    name = "undo",            -- optional group name
    u = { "Open undo tree" }, -- create a binding with label
}, { prefix = "<leader>" })
