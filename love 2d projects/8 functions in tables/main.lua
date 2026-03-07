function love.load()
    tableName = {}
    tableName["functionName"] = function ()
        print("hello world")
    end
    tableName:functionName()
end

function love.update(dt)

end

function love.draw()

end
