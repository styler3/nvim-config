return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        if vim.g.neovide then
            require("nvim-tree").setup()
        end
    end,
    init = function()
        if vim.g.neovide then
            vim.keymap.set("n", "<leader>to", ":NvimTreeOpen<CR>", { desc = "Tree Open" })
            vim.keymap.set("n", "<leader>tc", ":NvimTreeClose<CR>", { desc = "Tree Close" })
        end
    end,
}
