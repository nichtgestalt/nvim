-- Neovim Config

-- {{{ Plugins
require('bootstrap-packer')
require('packer-plugins')
require('neovide')
--}}}

-- General Settings
vim.wo.relativenumber = true
vim.cmd([[
  set foldmethod=marker
]])

-- Key Bindings
vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
--map('n', '<C-h>', 'za', {noremap = true, silent = false})
map('n', '<leader>f', 'za', {noremap = true, silent = false})

map('n', '<leader>wm',   ':e ~/.config/bspwm/bspwmrc<CR>',		{noremap = true, silent = false})
map('n', '<leader>ba',   ':e ~/.config/polybar/config.ini',		{noremap = true, silent = false})
map('n', '<leader>te',   ':e ~/.config/alacritty/alacritty.yml',	{noremap = true, silent = false})
map('n', '<leader>vi',   ':e ~/.config/nvim/init.lua',			{noremap = true, silent = false})
map('n', '<leader>pic',  ':e ~/.config/picom/picom.conf',		{noremap = true, silent = false})
map('n', '<leader>sh',   ':e ~/.bashrc',				{noremap = true, silent = false})
map('n', '<leader>ke',   ':e ~/.config/sxhkd/prototype-sxhkdrc',	{noremap = true, silent = false})
map('n', '<leader>no',   ':e ~/.Dokumente/notes.txt',			{noremap = true, silent = false})


-- {{{ Set Colorscheme
--require('onedark').load()
--vim.cmd[[colorscheme nord]]
vim.cmd[[colorscheme NeoSolarized]]
vim.cmd[[let g:transparent_enabled = v:true]]
-- }}}
-- {{{ vimwiki 
vim.g.vimwiki_list = { { path = '~/Notizblock/.src/vimwiki', syntax = 'markdown', ext = '.md' } }
--}}}
-- /comfy/ Note taking {{{
vim.api.nvim_create_autocmd({"BufWritePost"}, {
	pattern = {"*.ms"},
	command = '!buildnote %:p',
})
-- }}}
