return {
    "mfussenegger/nvim-lint",
    init = function()
        local lint = require("lint")
        lint.linters_by_ft = {
            javascript = { "oxlint" },
            typescript = { "oxlint" },
        }

        vim.api.nvim_create_autocmd({ "BufWritePost" }, {
            callback = function()
                lint.try_lint()
            end,
        })

        vim.diagnostic.config({
            virtual_text = true,
            signs = true,
            underline = true,
            update_at_insert = true,
            severity_sort = true,
        })
    end,
}
