return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    init = function()
        local treesitter = require("nvim-treesitter")
        treesitter.setup({
            highlight = {
                enable = true,
            },
            ensure_installed = {
                "javascript",
                "typescript",
                "tsx",
                "lua",
                "markdown",
                "html",
                "css",
                "c",
                "rust",
                "json",
                "gitignore",
                "bash",
                "yaml",
            },
        })
    end,
}
