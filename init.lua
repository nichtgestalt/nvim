-- Neovim Config

-- Plugins
require('packer-plugins')
require('neovide')

-- General Settings
vim.g.mapleader = " "
--vim.o.relativenumber = true

-- Set Colorscheme
require('onedark').load()
--vim.cmd[[colorscheme nord]]

-- wiki
vim.g.vimwiki_list = { { path = '~/Notizblock/.src/vimwiki', syntax = 'markdown', ext = '.md' } }
-- /comfy/ Note taking
vim.api.nvim_create_autocmd({"BufWritePost"}, {
	pattern = {"*.ms"},
	command = '!buildnote %:p',
})
