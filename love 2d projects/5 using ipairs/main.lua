function love.load()
    humans = {
        "john", "jake", "william", "berry", "olivia", "daisy", "liah"
    }
end

function love.draw()
    for i, human in ipairs(humans) do
        love.graphics.print(
            human,
            50 + 90 * (i - 1),
            50 + 0 * (i - 1)
        )
    end
end
