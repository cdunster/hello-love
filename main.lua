--! file: The entry point of the game.

function love.load()
    tick = require("tick")
    Object = require("classic")
    require("shape")

    shapes = {}

    drawRectangle = false
    tick.delay(function() drawRectangle = true end, 2)
end

function love.keypressed(key)
    if "space" == key then
        table.insert( shapes, Shape())
    end
end

function love.update(dt)
    tick.update(dt)

    if drawRectangle then
        table.insert(shapes, Shape())
        drawRectangle = false
    end

    for i, shape in ipairs(shapes) do
        shape:update(dt)
    end
    
end

function love.draw()
    for i, shape in ipairs(shapes) do
        shape:draw()
    end
end
