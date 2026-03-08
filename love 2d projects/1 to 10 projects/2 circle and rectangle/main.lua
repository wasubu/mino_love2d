function love.load()
    height = 350
end

function love.update()
end

function love.draw()
    love.graphics.circle("fill", 200, height, 90)
    love.graphics.rectangle("fill", 350, height, 190, 120)
end
