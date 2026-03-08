function love.load()
    playerPos = {
        x = 0, y = 0
    }
    playerSpeed = 190
end

function love.update(dt)
    local key = {
        down = love.keyboard.isDown("down"),
        up = love.keyboard.isDown("up"),
        right = love.keyboard.isDown("right"),
        left = love.keyboard.isDown("left"),
    }
    if key.down then
        playerPos.y = playerPos.y + playerSpeed * dt
    end
    if key.up then
        playerPos.y = playerPos.y - playerSpeed * dt
    end
    if key.right then
        playerPos.x = playerPos.x + playerSpeed * dt
    end
    if key.left then
        playerPos.x = playerPos.x - playerSpeed * dt
    end
end

function love.draw()
    love.graphics.rectangle("fill", playerPos.x, playerPos.y, 100, 100)
end
