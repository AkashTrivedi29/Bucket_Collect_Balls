local M = {}
local key = "bucket_highscore"

function M.get()
    return system.getPreference("app", key, "number") or 0
end

function M.set(score)
    system.setPreferences("app", { [key] = score })
end

return M
