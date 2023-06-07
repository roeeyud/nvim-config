-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("roee.packer")
require("roee.set")
require("roee.color")
require("roee.remap")
require("roee.zen")
require("roee.line")
