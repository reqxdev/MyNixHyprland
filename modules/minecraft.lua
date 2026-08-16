local M = {}

function M.setup(hl)

    local MC_WORKSPACE = "1"

    local function is_minecraft(w)
        return w
            and w.class
            and w.class:match("^Minecraft")
    end

    local function get_columns(count)
        if count == 1 then
            return 1
        elseif count <= 4 then
            return 2
        elseif count <= 6 then
            return 3
        elseif count <= 8 then
            return 4
        elseif count == 9 then
            return 3
        elseif count <= 16 then
            return 4
        elseif count <= 25 then
            return 5
        end

        return math.ceil(math.sqrt(count))
    end

    -- Workspace 1 requests this layout in workspaces.lua.
    hl.layout.register("mc-grid", {
        recalculate = function(ctx)
            local count = #ctx.targets

            if count == 0 then
                return
            end

            local columns = get_columns(count)

            for i, target in ipairs(ctx.targets) do
                target:place(
                    ctx:grid_cell(i, columns)
                )
            end
        end,
    })

    hl.on("window.open", function(w)
        if not is_minecraft(w) then
            return
        end

        -- Move Minecraft silently to its dedicated workspace.
        hl.dispatch(
            hl.dsp.window.move({
                workspace = MC_WORKSPACE,
                follow = false,
                window = w,
            })
        )

        -- Ensure it is tiled so mc-grid receives it.
        hl.dispatch(
            hl.dsp.window.float({
                action = "disable",
                window = w,
            })
        )

        local workspace = hl.get_workspace(MC_WORKSPACE)
        local layout = workspace and workspace.tiled_layout or "unknown"

        hl.notification.create({
            text = "MC layout: " .. tostring(layout),
            timeout = 3000,
        })
    end)

end

return M
