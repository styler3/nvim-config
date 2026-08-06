return {
    dependencies = { "nvim-tree/nvim-web-devicons" },
    "OXY2DEV/markview.nvim",
    lazy = false,
    config = function()
        require("markview").setup({
            preview = {
                icon_provider = "devicons",
            },
        })
    end,
}
