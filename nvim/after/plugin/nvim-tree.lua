vim.g.loaded_netwr = 1
vim.g.loaded_netwrPlugin = 1

require("nvim-tree").setup({
  view = {
    adaptive_size = true
  }
})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
