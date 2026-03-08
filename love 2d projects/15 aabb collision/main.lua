--
--
--
function love.load()
    rectangles = {}
    speed = 150
    color = {
        r = 1, g = 1, b = 1,
    }
    switchToRed = false
    -- color = {
    --     r = 1, g = 0.2, b = 0.2,
    -- }
    addRect(200, 200, 150, 200)
    addRect(500, 100, 130, 130)
end

function love.keypressed(key)
    if key == "space" then
        switchToRed = true
    end
end

function checkCollision(rect1, rect2)
    local rect1Left = rect1.x
    local rect1Right = rect1.x + rect1.w
    local rect1Top = rect1.y
    local rect1Bottom = rect1.y + rect1.h

    local rect2Left = rect2.x
    local rect2Right = rect2.x + rect2.w
    local rect2Top = rect2.y
    local rect2Bottom = rect2.y + rect2.h
    local checkHorizontal = (
        rect1Left < rect2Right and rect1Right > rect2Left
    )
    local checkVertical = rect1Top < rect2Bottom and rect1Bottom > rect2Top
    return checkHorizontal and checkVertical
end

function love.update(dt)
    if checkCollision(rectangles[1], rectangles[2]) then
        switchToRed = true
    else
        switchToRed = false
    end
    if switchToRed then
        color = {
            r = 1, g = 0.2, b = 0.2,
        }
    else
        color = {
            r = 1, g = 1, b = 1,
        }
    end
    if love.keyboard.isDown("w") then
        rectangles[2].y = rectangles[2].y - speed * dt
    end
    if love.keyboard.isDown("a") then
        rectangles[2].x = rectangles[2].x - speed * dt
    end
    if love.keyboard.isDown("s") then
        rectangles[2].y = rectangles[2].y + speed * dt
    end
    if love.keyboard.isDown("d") then
        rectangles[2].x = rectangles[2].x + speed * dt
    end
end

function love.draw()
    love.graphics.setColor(color.r, color.g, color.b)
    for i, rect in ipairs(rectangles) do
        love.graphics.rectangle(
            "line", rect.x, rect.y, rect.w, rect.h
        )
    end
end

function addRect(x, y, w, h)
    rect = {}
    rect.x = x
    rect.y = y
    rect.w = w
    rect.h = h
    table.insert(rectangles, rect)
end
