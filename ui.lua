local M = {}

-- Creates a heart icon at (x,y) and returns it
function M.createHeart(x, y, group)
    local heart = display.newImageRect("assets/heart.png", 60, 60)
    heart.x, heart.y = x, y
    group:insert(heart)
    return heart
end

return M
