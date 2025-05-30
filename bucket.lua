local physics = require("physics")
local Bucket  = {}
Bucket.__index = Bucket

function Bucket.new(x, y)
    -- ALWAYS use the 2-arg overload, then insert yourself
    local bucket = display.newImageRect("assets/bucket.png", 120, 80)
    bucket.x, bucket.y = x, y
    physics.addBody(bucket, "static", { isSensor = true })
    bucket.myName = "bucket"
    return bucket
end

return Bucket
