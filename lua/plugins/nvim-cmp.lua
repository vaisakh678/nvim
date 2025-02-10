-- Autocompletion
return {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    config = function()
        local cmp = require('cmp')

        cmp.setup({
            sources = {
                { name = 'nvim_lsp' },
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-y>'] = cmp.mapping.complete(),
                ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                ['<C-d>'] = cmp.mapping.scroll_docs(4),
                ['<Tab>'] = cmp.mapping.select_next_item(),
                ['<S-Tab>'] = cmp.mapping.select_prev_item(),
            }),
            snippet = {
                expand = function(args)
                    vim.snippet.expand(args.body)
                end,
            },
        })
    end
}
