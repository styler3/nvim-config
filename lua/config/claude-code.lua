if vim.g.neovide then
    vim.keymap.set("n", "<leader>cc", ":terminal claude<CR>")
    vim.keymap.set("n", "<leader>cr", ":terminal claude --continue<CR>")
end
