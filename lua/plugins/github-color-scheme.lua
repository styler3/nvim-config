return {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    config = function()
        if vim.g.neovide then
            require("github-theme").setup()
            vim.cmd("colorscheme github_light")
        end
    end,
}
