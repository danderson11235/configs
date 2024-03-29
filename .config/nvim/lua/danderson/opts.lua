local opt = vim.opt

opt.colorcolumn = '80'
opt.number = true
opt.relativenumber = true
opt.scrolloff = 4
opt.wrap = false

opt.syntax = "ON"
opt.termguicolors = true
opt.ignorecase = true
opt.smartcase = true

opt.expandtab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4

function ColorMyPencils(color)
    color = color or "nightfly"
    vim.cmd.colorscheme(color)

end
ColorMyPencils()
