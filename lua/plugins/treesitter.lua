return {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufReadPre',
    build = ':TSUpdate',
    config = function()
        require 'nvim-treesitter.configs'.setup {
            ensure_installed = { "go", "python", "lua", "javascript" },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true,
            },
            autopairs = {
                enable = true,
            },
            rainbow = {
                enable = true,
                extended_mode = true,
                max_file_lines = 1000,
            },
        }
    end,
}
