vim.g.mapleader = " "
vim.keymap.set("n", "<Leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<Leader>hl", vim.cmd.noh)
vim.keymap.set("i", "fj", "<Esc>")
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
vim.keymap.set("n", "<Leader>cw", "ciw()<Esc>P")
