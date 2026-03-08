--
--
--
function love.load()
    myImage = love.graphics.newImage("images/image.png")
    width = myImage:getWidth()
    height = myImage:getHeight()
    love.graphics.setBackgroundColor(
        70 / 255, 70 / 255, 70 / 255
    )
end

function love.draw()
    love.graphics.setColor(1, 0.5, 0.5)
    love.graphics.draw(myImage, 100, 300, 0, 2, -2)
    love.graphics.setColor(0, 1, 0.5)
    love.graphics.circle("fill", 300, 200, 90)
end
