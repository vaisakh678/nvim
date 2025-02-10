return {
    -- theme
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            integrations = {
                telescope = true,
                nvimtree = true,
            },
        })
        vim.cmd.colorscheme "catppuccin"
    end,
}
