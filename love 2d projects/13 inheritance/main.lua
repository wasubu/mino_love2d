--
--
--
local r1, r2

function love.load()
    Object = require "classic"
    Rectangle = require "rectangle"
    Circle = require "circle"
    r1 = Rectangle(100, 200, 100, 100)
    r2 = Circle(100, 400, 70)
end

function love.update(dt)
    r1:update(dt)
    r2:update(dt)
end

function love.draw()
    r1:draw()
    r2:draw()
end
