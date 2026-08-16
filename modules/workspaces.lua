local M = {}

function M.setup(hl)

    -- Dedicated Minecraft workspace
    hl.workspace_rule({
        workspace = "1",
        monitor = "DP-2",
        default = true,
        persistent = true,

        layout = "lua:mc-grid",

        gaps_in = 0,
        gaps_out = 1,

        no_border = true,
        no_shadow = true,
        no_rounding = true,
    })

    -- Optional default workspace for DP-2
    hl.workspace_rule({
        workspace = "2",
        monitor = "DP-2",
        default = true,
        persistent = true,
        layout = "dwindle",
    })

    -- Optional default workspace for vertical DP-3
    hl.workspace_rule({
        workspace = "3",
        monitor = "DP-3",
        default = true,
        persistent = true,
        layout = "dwindle",
    })

end

return M
