local M = {}

function M.setup(hl)

    -- Ignore maximize requests from all apps
    local suppressMaximizeRule = hl.window_rule({
        name = "suppress-maximize-events",

        match = {
            class = ".*",
        },

        suppress_event = "maximize",
    })

    -- Uncomment if you ever want to disable this rule:
    -- suppressMaximizeRule:set_enabled(false)


    -- Fix some dragging issues with XWayland
    hl.window_rule({
        name = "fix-xwayland-drags",

        match = {
            class      = "^$",
            title      = "^$",
            xwayland   = true,
            float      = true,
            fullscreen = false,
            pin        = false,
        },

        no_focus = true,
    })


    -- Hyprland-run window rule
    hl.window_rule({
        name = "move-hyprland-run",

        match = {
            class = "hyprland-run",
        },

        move  = "20 monitor_h-120",
        float = true,
    })

end

return M
