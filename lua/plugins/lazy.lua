local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "failed to clone lazy.nvim:\n", "errormsg" },
      { out, "warningmsg" },
      { "\npress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
	{
        -- theme
		"catppuccin/nvim", name = "catppuccin", priority = 1000,
		config = function()
			require("catppuccin").setup({
				integrations = {
					telescope = true,
					nvimtree = true,
				},
			})
			vim.cmd.colorscheme "catppuccin"
		end,
	},
	{
        -- telescope / searching
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
        -- file tree
		"nvim-tree/nvim-tree.lua",
		version = "*",
		require = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	},
	{
        -- commenting
	    "numtostr/Comment.nvim",
	    config = function()
		require("Comment").setup()
	    end,
	},
})
