local lang_servers = {
    -- rust
    "rust_analyzer",

    -- C++
    "clangd",
    "cmake"
}

return {
    {
        "williamboman/mason.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            "williamboman/mason-lspconfig.nvim"
        },
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
