function setup()
    local open_with_trouble = require("trouble.sources.telescope").open

    local telescope = require("telescope")

    telescope.setup({
        defaults = {
            mappings = {
                i = { ["<c-t>"] = open_with_trouble },
                n = { ["<c-t>"] = open_with_trouble },
            },
        },
    })
end

return {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
        {
            "<leader>xd",
            "<cmd>Trouble diagnostics toggle win.position=right<cr>",
            desc = "Diagnostics (Trouble)",
        },
        {
            "<leader>xs",
            "<cmd>Trouble symbols toggle focus=false<cr>",
            desc = "Symbols (Trouble)",
        },
        {
            "<leader>xq",
            "<cmd>Trouble qflist toggle win.position=right focus=false<cr>",
            desc = "Quickfix List (Trouble)",
        },
    },
    init = setup,
}
