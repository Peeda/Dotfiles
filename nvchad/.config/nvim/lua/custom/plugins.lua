local plugins = {
    {
    "neovim/nvim-lspconfig",
    config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
    end,
    },
    {
        "hrsh7th/nvim-cmp",
        enabled = true,
        opts = {
            sources = {
                {name = 'luasnip', keyword_length = 2},
                {name = 'path'},
                {name = 'buffer', keyword_length = 3},
                {name = 'nvim_lsp', keyword_length = 5},
            },
        },
    }
}
return plugins
