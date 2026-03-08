--
--
--
Circle = Object:extend()

function Circle.new(self)
    self.pos = { x = 200, y = 150 / 2 }
    self.size = 90
    self.speed = 90
end

function Circle.update(self, dt)
    self.pos.y = self.pos.y + self.speed * dt
end

function Circle.draw(self)
    love.graphics.circle(
        "line", self.pos.x, self.pos.y,
        self.size
    )
end
