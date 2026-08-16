local M = {}

function M.setup(hl)

    hl.config({
        general = {
            gaps_in = 5,
            gaps_out = 5,

            border_size = 2,

            col = {
                active_border = "#3293d4",
                inactive_border = "#ffffff00",
            },

            resize_on_border = false,
            allow_tearing = false,

            layout = "dwindle",
        },

        decoration = {
            rounding = 0,
            rounding_power = 0,

            active_opacity = 0.95,
            inactive_opacity = 0.9,

            shadow = {
                enabled = true,
                range = 4,
                render_power = 3,
                color = 0xee1a1a1a,
            },

            blur = {
                enabled = true,
                size = 3,
                passes = 3,
                vibrancy = 0.1696,
            },
        },

        animations = {
            enabled = true,
        },
    })

    hl.config({
        dwindle = {
            preserve_split = true,
        },
    })

    hl.config({
        master = {
            new_status = "master",
        },
    })

    hl.config({
        scrolling = {
            fullscreen_on_one_column = true,
        },
    })

end

return M
