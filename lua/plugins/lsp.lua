return {
    "neovim/nvim-lspconfig",
    init = function()
        -- TODO: Document what needs to be installed for this to work
        vim.lsp.enable("ts_ls")
    end,
}
