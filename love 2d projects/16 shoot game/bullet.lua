--
--
--
local Bullet = Object:extend() -- create class

function Bullet:new(x, y)
    local imagePath = "images/bullet.png"
    self.pos = { x = x, y = y }
    self.image = love.graphics.newImage(imagePath)
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()
    self.speed = 500
end

function Bullet:update(dt)
    self.pos.y = self.pos.y + self.speed * dt
end

function Bullet:draw()
    love.graphics.draw(self.image, self.pos.x, self.pos.y)
end

return Bullet
