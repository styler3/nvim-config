return {
    "stevearc/conform.nvim",
    opts = {},
    init = function()
        local conform = require("conform")
        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                javascript = { "oxfmt" },
                typescript = { "oxfmt" },
                jsx = { "oxfmt" },
                tsx = { "oxfmt" },
            },
        })
        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*",
            callback = function(args)
                conform.format({ bufnr = args.buf })
            end,
        })
    end,
}
