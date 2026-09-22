-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

--
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")

-- copy
vim.keymap.set("n", "Y", "yy")

-- get code range
vim.keymap.set("v", "<leader>yr", function()
  local start = vim.fn.getpos("v")
  local finish = vim.fn.getpos(".")

  local start_line, start_col = start[2], start[3]
  local end_line, end_col = finish[2], finish[3]

  if start_line > end_line or (start_line == end_line and start_col > end_col) then
    start_line, end_line = end_line, start_line
    start_col, end_col = end_col, start_col
  end

  local path = vim.fn.expand("%:p:~")

  local address
  if start_line == end_line then
    address = string.format("%s:%d:%d-%d", path, start_line, start_col, end_col)
  else
    address = string.format("%s:%d:%d-%d:%d", path, start_line, start_col, end_line, end_col)
  end

  vim.fn.setreg("+", address .. "\n")
  vim.notify("Copied: " .. address)
end, { desc = "Copy file:line:col address of visual selection" })
