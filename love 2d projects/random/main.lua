--
--
--
function love.load()
    Object = require "classic"
    require "circle"
    cicle1 = Circle()
end

function love.update(dt)
    cicle1:update(dt)
end

function love.draw()
    cicle1:draw()
end
