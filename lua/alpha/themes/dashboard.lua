local if_nil = vim.F.if_nil

local default_terminal = {
    type = "terminal",
    command = nil,
    width = 69,
    height = 8,
    opts = {
        redraw = true,
        window_config = {},
    },
}

local default_header = {
    type = "text",
    val = {
	[[              █▀▀▌               █▀    ╓          ▀     ▀  ▀█ ▄   █▀        ]],
	[[             █▀  █  J▓▓ ▄▄▄ ,▄  ██,    ▀`  ,╓   ,▄  ▄   ▓   ▐█▌█ ██         ]],
	[[            ██▓µ-█M, ██▀ ██╙▐█M ██ ▀█ ▐█ ╓█▀ █▌ ██  █▌ ▐█ ▄▀██▐█ █▌         ]],
	[[            █▌█▌██▄▀ █▌ ▐█U ██ ▐█  █▌ ██ ██ ▄█▀ █▌ ▓█  ██ ▀ █▌▐███          ]],
	[[           ▄█ █▄█▌   █´ ▐█  ▀▀  ▀▀▀`  ▀  `▀▀██  ▀▀╙▀█▀└██m  █   █▀          ]],
	[[          ,█╜ █ █▌  ▄µ                ▀     █▀              █▄ █▀           ]],
        [[         ▄█▀                               ▀▀                 ╙▀            ]],
	[[                                             ~by nichtgestalt               ]],

    },
    opts = {
        position = "center",
        hl = "Type",
        -- wrap = "overflow";
    },
}

-- {{{ footer
local footer = {
    type = "text",
    val = '"Your mind is for mind is for having ideas, not for storing them,"',
    opts = {
        position = "center",
        hl = "Number",
    },
}
-- }}}
local leader = "SPC"
-- {{{ set up for buttons
--- @param sc string
--- @param txt string
--- @param keybind string? optional
--- @param keybind_opts table? optional
local function button(sc, txt, keybind, keybind_opts)
    local sc_ = sc:gsub("%s", ""):gsub(leader, "<leader>")

    local opts = {
        position = "center",
        shortcut = sc,
        cursor = 3,
        width = 50,
        align_shortcut = "right",
        hl_shortcut = "Keyword",
    }
    if keybind then
        keybind_opts = if_nil(keybind_opts, { noremap = true, silent = true, nowait = true })
        opts.keymap = { "n", sc_, keybind, keybind_opts }
    end

    local function on_press()
        local key = vim.api.nvim_replace_termcodes(keybind or sc_ .. "<Ignore>", true, false, true)
        vim.api.nvim_feedkeys(key, "t", false)
    end

    return {
        type = "button",
        val = txt,
        on_press = on_press,
        opts = opts,
    }
end
-- }}}
-- {{{ actual buttons
local buttons = {
    type = "group",
    val = {
        button("SPC n o",    "Notizen"),
        button("SPC w w",    "VimWiki"),
        button("SPC b a",    "Polybar"),
        button("SPC t e",    "Alacritty"),
        button("SPC v i",    "Neovim"),
        button("SPC s h",    "Bashrc"),
        button("SPC s x",    "Keys"),
        button("",    ""),
    },
    opts = {
        spacing = 1,
    },
}
-- }}}
-- {{{ section, config, return
local section = {
    terminal = default_terminal,
    header = default_header,
    buttons = buttons,
    footer = footer,
}

local config = {
    layout = {
        { type = "padding", val = 2 },
        section.header,
        { type = "padding", val = 2 },
        section.buttons,
        section.footer,
    },
    opts = {
        margin = 5,
    },
}

return {
    button = button,
    section = section,
    config = config,
    -- theme config
    leader = leader,
    -- deprecated
    opts = config,
}
-- }}}
