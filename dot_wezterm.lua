local wezterm = require 'wezterm';

return {
    color_scheme = "synthwave-84",
    font_size = 14.0,
    font = wezterm.font({
        family = "Cascadia Code",
        weight = "Bold"
    }),
    window_frame = {
        font_size = 14.0,
        active_titlebar_bg = "#2A2139",
        inactive_titlebar_bg = "#2A2139",
        inactive_tab_edge = "#2A2139"
    },
    colors = {
        tab_bar = {
            active_tab = {
                bg_color = "#2b2042",
                fg_color = "#ffffff"
            },
            inactive_tab = {
                bg_color = "#2A2139",
                fg_color = "#5C5A68"
            },
            inactive_tab_hover = {
                bg_color = "#3b3052",
                fg_color = "#909090",
                italic = true
            },
            new_tab = {
                bg_color = "#2A2139",
                fg_color = "#808080"
            },
            new_tab_hover = {
                bg_color = "#3b3052",
                fg_color = "#909090",
                italic = true
            }
        }
    },
    window_padding = {
        left = 12,
        right = 12,
        top = 12,
        bottom = 12
    },
    font_shaper = "Harfbuzz",
    enable_scroll_bar = true,
    window_close_confirmation = "NeverPrompt",
    hide_tab_bar_if_only_one_tab = true,
    use_fancy_tab_bar = true,
    tab_max_width = 16,
    keys = {{
        key = "\\",
        mods = "CMD",
        action = wezterm.action {
            SplitHorizontal = {
                domain = "CurrentPaneDomain"
            }
        }
    }, {
        key = "|",
        mods = "CMD",
        action = wezterm.action {
            SplitVertical = {
                domain = "CurrentPaneDomain"
            }
        }
    }, {
        key = "w",
        mods = "CMD",
        action = wezterm.action {
            CloseCurrentPane = {
                confirm = true
            }
        }
    }, {
        key = "LeftArrow",
        mods = "CMD",
        action = wezterm.action {
            SendString = "\x01"
        }
    }, {
        key = "RightArrow",
        mods = "CMD",
        action = wezterm.action {
            SendString = "\x05"
        }
    }, {
        key = "LeftArrow",
        mods = "OPT",
        action = wezterm.action {
            SendString = "\x1bb"
        }
    }, {
        key = "RightArrow",
        mods = "OPT",
        action = wezterm.action {
            SendString = "\x1bf"
        }
    }, {
        key = "v",
        mods = "CMD",
        action = "Paste"
    }, {
        key = "C",
        mods = "CMD",
        action = "Copy"
    }},
    mouse_bindings = {{
        event = {
            Up = {
                streak = 1,
                button = "Middle"
            }
        },
        mods = "NONE",
        action = "Paste"
    }}
}
