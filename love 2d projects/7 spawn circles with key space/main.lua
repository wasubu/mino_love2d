function love.load()
    circles = {}
end

function createCircle(tableName)
    circle = {}
    circle["radius"] = 30
    circle["pos"] = { x = 90, y = 90 }
    circle["velocity"] = 100
    table.insert(tableName, circle)
end

function love.keypressed(key)
    if key == "space" then
        createCircle(circles)
    end
end

function love.update(dt)
    for i, circle in ipairs(circles) do
        circle.pos.x = circle.pos.x + circle.velocity * dt
    end
end

function love.draw()
    for i, circle in ipairs(circles) do
        love.graphics.circle("line", circle.pos.x, circle.pos.y, circle.radius)
    end
    love.graphics.print(#circles, 400, 400)
end
