require("nvim-tree").setup({
   git = {
       ignore = false
   },
   view = {
    width = 70,
  },
})
vim.keymap.set("n", "<leader>w", "<cmd>NvimTreeToggle<cr>",
  {silent = true, noremap = true})

