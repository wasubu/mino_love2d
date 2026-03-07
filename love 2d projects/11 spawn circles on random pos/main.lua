function love.load()
    circles = {}
end

function spawnCircles(tableName)
    if not tableName then
        print("you didn't put the table name")
        return
    end
    local circle = {}
    circle.size = 30
    circle.pos = {
        x = math.random(0, 400) + circle.size,
        y = math.random(0, 300) + circle.size
    }
    table.insert(tableName, circle)
end

function love.keypressed(key)
    if key == "space" then
        spawnCircles(circles)
    end
end

function love.draw()
    for i, circle in ipairs(circles) do
        love.graphics.circle(
            "fill", circle.pos.x, circle.pos.y, circle.size
        )
    end
    love.graphics.print(#circles, 100, 500)
end
