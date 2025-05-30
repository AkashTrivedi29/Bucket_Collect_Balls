local physics = require("physics")
local Ball    = {}
Ball.__index = Ball

--imagePath: e.g. "assets/ball.png" / "assets/gold_ball.png" / "assets/bomb.png"
--name:      "ball" / "gold" / "bomb"
function Ball.new(x, y, imagePath, name)
    -- ALWAYS use the 2-arg overload, then insert yourself
    local ball = display.newImageRect(imagePath, 60, 60)
    ball.x, ball.y = x, y
    physics.addBody(ball, "dynamic", { radius = 30, bounce = 0 })
    ball.myName = name or "ball"
    return ball
end

return Ball
