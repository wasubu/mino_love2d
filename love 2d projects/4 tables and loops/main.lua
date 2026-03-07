function love.load()
    fruits = {
        "pear", "durian", "grapefruit"
    }
    table.insert(fruits, "pineapple")
    table.insert(fruits, "blueberries")
    table.insert(fruits, "dragonfruit")
    table.insert(fruits, "banana")
    fruits[7] = "orange"
    table.remove(fruits, 1)
    pos = {
        x = 50, y = 50
    }
    offsetVect = {
        x = 90, y = 0
    }
end

function love.draw()
    for i = 1, #fruits do
        love.graphics.print(
            fruits[i],
            pos.x + offsetVect.x * (i - 1), pos.y + offsetVect.y * (i - 1)
        )
    end
end
