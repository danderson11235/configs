vim.g.mapleader = " "
vim.keymap.set("n", "<Leader>dv", "mZ:Ex<CR>")
vim.keymap.set("n", "<Leader>hl", vim.cmd.noh)
vim.keymap.set("i", "fj", "<Esc>")
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
vim.keymap.set("n", "<Leader>cw", "ciw()<Esc>P")
vim.keymap.set("n", "<Leader>bw", "ciw{}<Esc>P")
vim.keymap.set("i", "", "<C-w>")
vim.keymap.set("t", "", "<C-w>")
vim.keymap.set("n", "<Leader>y", "\"*y")
vim.keymap.set("v", "<Leader>y", "\"*y")
vim.keymap.set("n", "<Leader>diw", "\"_diw")
vim.keymap.set("n", "<Leader>dw", "\"_dw")
vim.keymap.set("n", "<Leader>dd", "\"_dd")
vim.keymap.set("v", "<Leader>p", "\"_dP")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>df', builtin.find_files, {})
vim.keymap.set('n', '<A-d>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ds', function()
    builtin.grep_string({search = vim.fn.input("grep > ")});
end)

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
