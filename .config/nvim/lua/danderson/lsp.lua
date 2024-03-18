require('lsp-zero')
local lsp_zero = require('lsp-zero')
local ls = require('luasnip')

require('luasnip.loaders.from_vscode').load({path="~/.local/share/nvim/site/pack/packer/start/friendly-snippets/"})
vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})

local cmp = require('cmp')
local cmp_format = require('lsp-zero').cmp_format({details=true})
-- local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    sources = {
        {name='nvim_lsp'},
        {name='luasnip'},
        {name='buffer'},
    },
    formatting = cmp_format,
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({select=true}),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<M-n>'] = cmp.mapping.select_next_item(),
        ['<M-m>'] = cmp.mapping.select_prev_item(),
    })
})

lsp_zero.extend_lspconfig()

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers 

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'pylsp', 'rust_hdl'},
    handlers = {
        lsp_zero.default_setup,
    },
})

-- require('lspconfig').pylsp.setup({})
-- require('lspconfig').ghdl_ls.etup({})
require('lspconfig').vhdl_ls.setup({})

