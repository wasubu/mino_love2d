--
--
--
local Enemy = Object:extend() -- create class

function Enemy:new()
    local imagePath = "images/snake.png"
    self.pos = { x = 300, y = 450 }
    self.image = love.graphics.newImage(imagePath)
    self.width = self.image:getWidth()
    self.xVel = 500 --100
end

function Enemy:update(dt)
    self.pos.x = self.pos.x + self.xVel * dt
    local collision = {
        l = self.pos.x + self.xVel * dt < 0,
        r = self.pos.x + self.xVel * dt > love.graphics.getWidth() - self.width
    }
    if collision.l or collision.r then
        self.xVel = -self.xVel
    end
end

function Enemy:draw()
    love.graphics.draw(self.image, self.pos.x, self.pos.y)
end

return Enemy
