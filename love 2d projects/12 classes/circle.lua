--
--
--
Circle = Object:extend()

function Circle:new(x, y)
    self.x = x or 300
    self.y = y or 200
    self.width = 40
    self.speed = 100
end

function Circle:update(dt)
    self.x = self.x + self.speed * dt
end

function Circle:draw()
    love.graphics.circle("line", self.x, self.y, self.width)
end
