--! file: The entry point of the game.

function love.load()
    tick = require("tick")
    Object = require("classic")
    require("shape")
    require("rectangle")
    require("circle")

    shapes = {}

    drawRectangle = false
    tick.delay(function() drawRectangle = true end, 2)
end

function love.keypressed(key)
    if "space" == key then
        table.insert(shapes, Rectangle(100, 100, 150, 50))
    end
end

function love.update(dt)
    tick.update(dt)

    if drawRectangle then
        table.insert(shapes, Circle(200, 100, 50))
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
