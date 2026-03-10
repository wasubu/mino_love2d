--
--
--
local Bullet = require "bullet"

local Player = Object:extend() -- create class

function Player:new()
    local imagePath = "images/panda.png"
    self.pos = { x = 300, y = 30 }
    self.speed = 300
    self.image = love.graphics.newImage(imagePath)
    self.width = self.image:getWidth()
end

function Player:keypressed(key)
    if key == "space" then
        -- print("hello")
        local bullet = Bullet(
            (self.pos.x + (self.pos.x + self.width)) / 2,
            self.pos.y + 100
        )
        table.insert(bullets, bullet)
    end
end

function Player:update(dt)
    if love.keyboard.isDown("left") then
        self.pos.x = self.pos.x - self.speed * dt
    elseif love.keyboard.isDown("right") then
        self.pos.x = self.pos.x + self.speed * dt
    end
    if self.pos.x < 0 then
        self.pos.x = 0
    end
    if self.pos.x + self.width > love.graphics.getWidth() then
        self.pos.x = love.graphics.getWidth() - self.width
    end
end

function Player:draw()
    love.graphics.draw(self.image, self.pos.x, self.pos.y)
end

return Player
