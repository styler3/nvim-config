return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    init = function()
        if vim.g.neovide then
            require("ibl").setup()
        end
    end,
}
