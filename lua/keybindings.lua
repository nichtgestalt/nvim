-- Keybindings
local map = vim.api.nvim_set_keymap

-- folding
map('n', '<leader>f', 'za', {noremap = true, silent = false})

-- softpencil
map('n', '<leader>s', ':SoftPencil<CR>', {noremap = true, silent = false})

-- files
map('n', '<leader>g',  ':e ~/media/office/markdown/notes.md<CR>',    {noremap = true, silent = false})   -- notes
map('n', '<leader>vi', ':e ~/.config/nvim/init.lua<CR>',             {noremap = true, silent = false})   -- nvim config
map('n', '<leader>vk', ':e ~/.config/nvim/lua/keybindings.lua<CR>',  {noremap = true, silent = false})   -- nvim keybindings
map('n', '<leader>wm', ':e ~/.config/hypr/hyprland.conf<CR>',        {noremap = true, silent = false})   -- hyprland
map('n', '<leader>ke', ':e ~/.config/hypr/keybindings.conf<CR>',     {noremap = true, silent = false})   -- keybindings
map('n', '<leader>sh', ':e ~/.bashrc<CR>',                           {noremap = true, silent = false})   -- bashrc
map('n', '<leader>bar', ':e ~/.config/waybar/config<CR>',            {noremap = true, silent = false})   -- waybar config
map('n', '<leader>css', ':e ~/.config/waybar/style.css<CR>',         {noremap = true, silent = false})   -- waybar css
