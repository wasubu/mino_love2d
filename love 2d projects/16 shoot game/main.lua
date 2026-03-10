--
--
--
Object = require "classic"
local Player = require "player"
local Enemy = require "enemy"
local Bullet = require "bullet"

function love.load()
    player = Player()
    enemy = Enemy()
    bullets = {}
    table.insert(bullets, Bullet(50, 0))
end

function love.update(dt)
    player:update(dt)
    enemy:update(dt)
    for i, bullet in ipairs(bullets) do
        bullet:update(dt)
    end
end

function love.keypressed(key)
    player:keypressed(key)
end

function love.draw()
    player:draw()
    enemy:draw()
    for i, bullet in ipairs(bullets) do
        bullet:draw()
    end
end
