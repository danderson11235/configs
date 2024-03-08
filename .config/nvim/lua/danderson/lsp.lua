local lsp_zero = require('lsp-zero')
local ls = require('luasnip')
require('luasnip.loaders.from_vscode').lazy_load()

vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})


lsp_zero.extend_lspconfig()

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers 

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'pylsp', 'hdl_checker'},
    handlers = {
        lsp_zero.default_setup,
    },
})

-- require('lspconfig').pylsp.setup({})
-- require('lspconfig').ghdl_ls.setup({})
require('lspconfig').vhdl_ls.setup({})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({select=false}),
        ['<C-Space>'] = cmp.mapping.complete(),
    })
})
