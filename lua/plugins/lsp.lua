return {
    "neovim/nvim-lspconfig",
    init = function()
        vim.lsp.enable("ts_ls")
    end,
}
