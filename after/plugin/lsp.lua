local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

-- (Optional) Configure lua language server for neovim
local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
lspconfig.eslint.setup({
    on_attach = function(client, bufnr)
        vim.api.nvim_create_autocmd("BufWritePost", {
            command = "EslintFixAll",
            pattern = { "*" },
        })
    end,
})

lsp.setup()


local cmp = require('cmp')

cmp.setup({
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
    }
})

vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
vim.keymap.set('i', 'C-p', '<cmd>lua vim.lsp.buf.completion()<cr>')
vim.keymap.set('n', '<leader>q', function() vim.lsp.buf.format() end)
local wk = require("which-key")
wk.register({
    ["<leader>q"] = { "Format file" }, -- special label to hide it in the popup
})
-- vim.api.nvim_create_autocmd("BufWritePost", {
-- callback = function()
-- vim.lsp.buf.format()
-- end
-- })
