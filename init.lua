local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then

	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,

	})
end

vim.opt.rtp:prepend(lazypath)

--vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ''
vim.g.maplocalleader = ' '
vim.g.user_emmet_leader_key = ','
vim.cmd [[hi NormaFloat guibg=NONE ctermbg=LightGrey]]
require("options")
require("keybinds")

require("lazy").setup("plugins", {

	performance = {

		rtp = {
			disabled_plugins = {
			
				"gzip",
				"matchit",
				"tutor",
				"tohtml",
				"matchparen",
				"zipPlugin",
				"tarPlugin",
			},
		},
	},
})
