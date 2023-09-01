local lang_servers = {
    -- rust
    "rust_analyzer"
}

return {
    {
        "neovim/nvim-lspconfig"
    },
    {
        "williamboman/mason-lspconfig.nvim"
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {

            }
        },
        config = function(_, opts)
            require("mason").setup(opts)
            require("mason-lspconfig").setup({
                ensure_installed = lang_servers,
                automatic_installation = true,
            })
        end
    }
}
