vim.g.mapleader = " "

-- netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- navigation 
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move focus left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move focus right" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move focus down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move focus up" })

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<Cr>")

-- comment
vim.keymap.set("n", "<leader>/", "<Plug>(comment_toggle_linewise_current)")
vim.keymap.set("v", "<leader>/", "<Plug>(comment_toggle_linewise_visual)")
