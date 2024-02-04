vim.g.mapleader = " "
vim.keymap.set("n", "<Leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<Leader>hl", vim.cmd.noh)
vim.keymap.set("i", "fj", "<Esc>")
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
vim.keymap.set("n", "<Leader>cw", "ciw()<Esc>P")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({search = vim.fn.input("grep > ")});
end)

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
