-- Plugins 
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'ap/vim-css-color'
	-- comfy
	use 'preservim/vim-pencil'
	use 'vimwiki/vimwiki'
	-- colors
	use 'navarasu/onedark.nvim'
	use 'shaunsingh/nord.nvim'
	use 'NTBBloodbath/doom-one.nvim'
	-- Dashboard
	use { 
		'glepnir/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
			}
		end,
		requires = {'nvim-tree/nvim-web-devicons'}
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
end)
