vim.g.mapleader = " "
vim.keymap.set("n", "<Leader>dv", vim.cmd.Ex)
vim.keymap.set("n", "<Leader>hl", vim.cmd.noh)
vim.keymap.set("i", "fj", "<Esc>")
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
vim.keymap.set("n", "<Leader>cw", "ciw()<Esc>P")
vim.keymap.set("n", "<Leader>bw", "ciw{}<Esc>P")
vim.keymap.set("i", "", "<C-w>")
vim.keymap.set("t", "", "<C-w>")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>df', builtin.find_files, {})
vim.keymap.set('n', '<A-d>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ds', function()
    builtin.grep_string({search = vim.fn.input("grep > ")});
end)

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
