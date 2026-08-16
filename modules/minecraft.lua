local M = {}

function M.setup(hl)

    local function is_minecraft(w)
        return w
            and w.class
            and w.class:match("^Minecraft")
    end

    local function get_minecraft_windows()
        local windows = {}

        for _, w in ipairs(hl.get_windows()) do
            if is_minecraft(w) then
                table.insert(windows, w)
            end
        end

        return windows
    end

    local function arrange_minecraft()
        local mc = get_minecraft_windows()
        local count = #mc

        if count == 0 then
            return
        end

        local X = 0
        local Y = 1110
        local W = 1920
        local H = 1050

        local function place(w, x, y, width, height)

            hl.dispatch(
                hl.dsp.window.resize({
                    x = width,
                    y = height,
                    relative = false,
                    window = w,
                })
            )

            hl.dispatch(
                hl.dsp.window.move({
                    x = x,
                    y = y,
                    relative = false,
                    window = w,
                })
            )
        end

    -- 1 MC
    if count == 1 then

        place(mc[1], 0, 1110, 1920, 1050)

    -- 2 MCs
    elseif count == 2 then

        place(mc[1], 0,    1110, 960, 1050)
        place(mc[2], 960,  1110, 960, 1050)

    -- 3 MCs
    elseif count == 3 then

        place(mc[1], 0,    1110, 960, 525)
        place(mc[2], 960,  1110, 960, 525)
        place(mc[3], 0,    1635, 960, 525)

    -- 4 MCs
    elseif count == 4 then

        place(mc[1], 0,    1110, 960, 525)
        place(mc[2], 960,  1110, 960, 525)
        place(mc[3], 0,    1635, 960, 525)
        place(mc[4], 960,  1635, 960, 525)

    -- 5 MCs
    elseif count == 5 then

        place(mc[1], 0,    1110, 640, 525)
        place(mc[2], 640,  1110, 640, 525)
        place(mc[3], 1280, 1110, 640, 525)
        place(mc[4], 0,    1635, 640, 525)
        place(mc[5], 640,  1635, 640, 525)

    -- 6 MCs
    elseif count == 6 then

        place(mc[1], 0,    1110, 640, 525)
        place(mc[2], 640,  1110, 640, 525)
        place(mc[3], 1280, 1110, 640, 525)
        place(mc[4], 0,    1635, 640, 525)
        place(mc[5], 640,  1635, 640, 525)
        place(mc[6], 1280, 1635, 640, 525)

    -- 7 MCs
    elseif count == 7 then

        place(mc[1], 0,    1110, 640, 350)
        place(mc[2], 640,  1110, 640, 350)
        place(mc[3], 1280, 1110, 640, 350)

        place(mc[4], 0,    1460, 640, 350)
        place(mc[5], 640,  1460, 640, 350)
        place(mc[6], 1280, 1460, 640, 350)

        place(mc[7], 0,    1810, 640, 350)

    -- 8 MCs
    elseif count == 8 then

        place(mc[1], 0,    1110, 640, 350)
        place(mc[2], 640,  1110, 640, 350)
        place(mc[3], 1280, 1110, 640, 350)

        place(mc[4], 0,    1460, 640, 350)
        place(mc[5], 640,  1460, 640, 350)
        place(mc[6], 1280, 1460, 640, 350)

        place(mc[7], 0,    1810, 640, 350)
        place(mc[8], 640,  1810, 640, 350)

    -- 9 MCs
    elseif count == 9 then

        place(mc[1], 0,    1110, 640, 350)
        place(mc[2], 640,  1110, 640, 350)
        place(mc[3], 1280, 1110, 640, 350)

        place(mc[4], 0,    1460, 640, 350)
        place(mc[5], 640,  1460, 640, 350)
        place(mc[6], 1280, 1460, 640, 350)

        place(mc[7], 0,    1810, 640, 350)
        place(mc[8], 640,  1810, 640, 350)
        place(mc[9], 1280, 1810, 640, 350)

    -- 10 MCs
    elseif count == 10 then

        place(mc[1],  0,    1110, 480, 350)
        place(mc[2],  480,  1110, 480, 350)
        place(mc[3],  960,  1110, 480, 350)
        place(mc[4],  1440, 1110, 480, 350)

        place(mc[5],  0,    1460, 480, 350)
        place(mc[6],  480,  1460, 480, 350)
        place(mc[7],  960,  1460, 480, 350)
        place(mc[8],  1440, 1460, 480, 350)

        place(mc[9],  0,    1810, 480, 350)
        place(mc[10], 480,  1810, 480, 350)

    -- 11 MCs
    elseif count == 11 then

        place(mc[1],  0,    1110, 480, 350)
        place(mc[2],  480,  1110, 480, 350)
        place(mc[3],  960,  1110, 480, 350)
        place(mc[4],  1440, 1110, 480, 350)

        place(mc[5],  0,    1460, 480, 350)
        place(mc[6],  480,  1460, 480, 350)
        place(mc[7],  960,  1460, 480, 350)
        place(mc[8],  1440, 1460, 480, 350)

        place(mc[9],  0,    1810, 480, 350)
        place(mc[10], 480,  1810, 480, 350)
        place(mc[11], 960,  1810, 480, 350)

    -- 12 MCs
    elseif count == 12 then

        place(mc[1],  0,    1110, 480, 350)
        place(mc[2],  480,  1110, 480, 350)
        place(mc[3],  960,  1110, 480, 350)
        place(mc[4],  1440, 1110, 480, 350)

        place(mc[5],  0,    1460, 480, 350)
        place(mc[6],  480,  1460, 480, 350)
        place(mc[7],  960,  1460, 480, 350)
        place(mc[8],  1440, 1460, 480, 350)

        place(mc[9],  0,    1810, 480, 350)
        place(mc[10], 480,  1810, 480, 350)
        place(mc[11], 960,  1810, 480, 350)
        place(mc[12], 1440, 1810, 480, 350)

    -- 13 MCs
    elseif count == 13 then

        place(mc[1],  0,    1110, 480, 263)
        place(mc[2],  480,  1110, 480, 263)
        place(mc[3],  960,  1110, 480, 263)
        place(mc[4],  1440, 1110, 480, 263)

        place(mc[5],  0,    1373, 480, 262)
        place(mc[6],  480,  1373, 480, 262)
        place(mc[7],  960,  1373, 480, 262)
        place(mc[8],  1440, 1373, 480, 262)

        place(mc[9],  0,    1635, 480, 263)
        place(mc[10], 480,  1635, 480, 263)
        place(mc[11], 960,  1635, 480, 263)
        place(mc[12], 1440, 1635, 480, 263)

        place(mc[13], 0,    1898, 480, 262)

    -- 14 MCs
    elseif count == 14 then

        place(mc[1],  0,    1110, 480, 263)
        place(mc[2],  480,  1110, 480, 263)
        place(mc[3],  960,  1110, 480, 263)
        place(mc[4],  1440, 1110, 480, 263)

        place(mc[5],  0,    1373, 480, 262)
        place(mc[6],  480,  1373, 480, 262)
        place(mc[7],  960,  1373, 480, 262)
        place(mc[8],  1440, 1373, 480, 262)

        place(mc[9],  0,    1635, 480, 263)
        place(mc[10], 480,  1635, 480, 263)
        place(mc[11], 960,  1635, 480, 263)
        place(mc[12], 1440, 1635, 480, 263)

        place(mc[13], 0,    1898, 480, 262)
        place(mc[14], 480,  1898, 480, 262)

    -- 15 MCs
    elseif count == 15 then

        place(mc[1],  0,    1110, 480, 263)
        place(mc[2],  480,  1110, 480, 263)
        place(mc[3],  960,  1110, 480, 263)
        place(mc[4],  1440, 1110, 480, 263)

        place(mc[5],  0,    1373, 480, 262)
        place(mc[6],  480,  1373, 480, 262)
        place(mc[7],  960,  1373, 480, 262)
        place(mc[8],  1440, 1373, 480, 262)

        place(mc[9],  0,    1635, 480, 263)
        place(mc[10], 480,  1635, 480, 263)
        place(mc[11], 960,  1635, 480, 263)
        place(mc[12], 1440, 1635, 480, 263)

        place(mc[13], 0,    1898, 480, 262)
        place(mc[14], 480,  1898, 480, 262)
        place(mc[15], 960,  1898, 480, 262)

    -- 16 MCs
    elseif count == 16 then

        place(mc[1],  0,    1110, 480, 263)
        place(mc[2],  480,  1110, 480, 263)
        place(mc[3],  960,  1110, 480, 263)
        place(mc[4],  1440, 1110, 480, 263)

        place(mc[5],  0,    1373, 480, 262)
        place(mc[6],  480,  1373, 480, 262)
        place(mc[7],  960,  1373, 480, 262)
        place(mc[8],  1440, 1373, 480, 262)

        place(mc[9],  0,    1635, 480, 263)
        place(mc[10], 480,  1635, 480, 263)
        place(mc[11], 960,  1635, 480, 263)
        place(mc[12], 1440, 1635, 480, 263)

        place(mc[13], 0,    1898, 480, 262)
        place(mc[14], 480,  1898, 480, 262)
        place(mc[15], 960,  1898, 480, 262)
        place(mc[16], 1440, 1898, 480, 262)
    end
end

    hl.on("window.open", function(w)
        if is_minecraft(w) then

            local previous = hl.get_active_window()

            hl.notification.create({
                text = "MC detected: " .. tostring(w.class),
                timeout = 2000,
            })

            hl.dispatch(
                hl.dsp.window.float({
                    action = "set",
                    window = w,
                })
            )

            arrange_minecraft()

            if previous and previous ~= w then
                hl.dispatch(
                    hl.dsp.window.focus({
                        window = previous,
                    })
                )
            end
        end
    end)

hl.on("window.destroy", function(w)
    if is_minecraft(w) then
        arrange_minecraft()
    end
end)

end

return M
