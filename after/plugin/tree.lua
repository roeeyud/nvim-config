require("nvim-tree").setup({
   git = {
       ignore = false
   }
})
vim.keymap.set("n", "<leader>w", "<cmd>NvimTreeToggle<cr>",
  {silent = true, noremap = true})

