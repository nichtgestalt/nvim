-- Plugins 
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'ap/vim-css-color'
	use 'xiyaowong/transparent.nvim'
	-- comfy
	use 'preservim/vim-pencil'
	use 'vimwiki/vimwiki'
	-- colors
	use 'navarasu/onedark.nvim'
	use 'shaunsingh/nord.nvim'
	use 'NTBBloodbath/doom-one.nvim'
	use 'tjdevries/colorbuddy.nvim'
	use 'overcache/NeoSolarized'
	use 'svrana/neosolarized.nvim'
	use 'folke/which-key.nvim'
	use {
    "goolord/alpha-nvim",
    config = function ()
        local alpha = require'alpha'
        local dashboard = require'alpha.themes.dashboard'
        dashboard.section.header.val = 'foo'
        dashboard.section.buttons.val = {
            dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
            dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
        }
        local handle = io.popen('fortune')
        local fortune = handle:read("*a")
        handle:close()
        dashboard.section.footer.val = fortune
        alpha.setup(dashboard.opts)
    end
}
end)
