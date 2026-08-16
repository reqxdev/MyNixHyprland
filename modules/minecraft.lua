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

    local function get_grid(count)

        if count == 1 then
            return 1, 1

        elseif count == 2 then
            return 2, 1

        elseif count <= 4 then
            return 2, 2

        elseif count <= 6 then
            return 3, 2

        elseif count <= 8 then
            return 4, 2

        elseif count == 9 then
            return 3, 3

        elseif count <= 12 then
            return 4, 3

        elseif count <= 16 then
            return 4, 4

        elseif count <= 20 then
            return 5, 4

        elseif count <= 25 then
            return 5, 5
        end

        return nil, nil
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

        local columns, rows = get_grid(count)

        if not columns or not rows then
            return
        end

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

        for i, w in ipairs(mc) do
            local index = i - 1

            local column = index % columns
            local row = math.floor(index / columns)

            local x1 = X + math.floor(column * W / columns)
            local x2 = X + math.floor((column + 1) * W / columns)

            local y1 = Y + math.floor(row * H / rows)
            local y2 = Y + math.floor((row + 1) * H / rows)

            local width = x2 - x1
            local height = y2 - y1

            place(
                w,
                x1,
                y1,
                width,
                height
            )
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
