vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)
local wk = require("which-key")
wk.register({
    f = {
        name = "file",         -- optional group name
        v = { "Exit buffer" }, -- create a binding with label
    },
}, { prefix = "<leader>" })
vim.api.nvim_set_option("clipboard", "unnamed")
vim.keymap.set("n", "<leader>/", require("Comment.api").toggle.linewise.current)
wk.register({
    name = "code",             -- optional group name
    ["/"] = { "Comment" },     -- create a binding with label
}, { prefix = "<leader>" })
