-- font
vim.o.guifont = "Hack Nerd Font:h14"

-- padding
vim.g.neovide_padding_top = 10
vim.g.neovide_padding_pottom = 10
vim.g.neovide_padding_right = 15
vim.g.neovide_padding_left = 15

-- floating blur amount
vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0

-- transparency
vim.g.neovide_transparency = 0.80
vim.g.neovide_scroll_animation_length = 0.3
vim.g.neovide_hide_mouse_when_typing = true

-- graphics
vim.g.neovide_theme = 'auto'                       -- auto, light, dark
vim.g.neovide_refresh_rate = 60
vim.g.neovide_refresh_rate_idle = 5
vim.g.neovide_confirm_quit = true
vim.g.neovide_fullscreen = false
vim.g.neovide_remember_window_size = true

-- cursor settings
vim.g.neovide_cursor_animation_length = 0.04
vim.g.neovide_cursor_trail_size = 0.8
vim.g.neovide_cursor_antialiasing = true           -- disabling may fix visual issues
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_animate_command_line = true
vim.g.neovide_cursor_unfocused_outline_width = 0.125

-- vfx modes: railgun, torpedo, pixiedust; sonicboom, wireframe
vim.g.neovide_cursor_vfx_mode = "railgun"
vim.g.neovide_cursor_vfx_opacity = 200.0
vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
vim.g.neovide_cursor_vfx_particle_density = 7.0
vim.g.neovide_cursor_vfx_particle_speed = 30.0
vim.g.neovide_cursor_vfx_particle_phase = 1.5      -- railgun only: movement of particles
vim.g.neovide_cursor_vfx_particle_curl = 1.0       -- railgun only: rotation speed
