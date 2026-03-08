function love.load()
    cars = {}
    cars["toyota"] = { "prius", "carola", "rav4" }
    print(cars.toyota[1])
end

function love.draw()
    love.graphics.print(cars.toyota[1], 50, 50)
end
