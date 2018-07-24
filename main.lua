--! file: The entry point of the game.

function love.load()
    tick = require("tick")
    Object = require("classic")
    require("shape")
    require("rectangle")
    require("circle")

    shapes = {}

    sheepSprite = love.graphics.newImage("resources/sheep.png")

    drawCircle = false
    tick.delay(function() drawCircle = true end, 2)
end

function love.keypressed(key)
    if "space" == key then
        table.insert(shapes, Rectangle(100, 100, 150, 50))
    end
end

function love.update(dt)
    tick.update(dt)

    if drawCircle then
        circle = Circle(200, 100, 50)
        drawCircle = false
    end

    for i, shape in ipairs(shapes) do
        shape:update(dt)
    end
    
end

function love.draw()
    love.graphics.draw(sheepSprite, 100, 100)

    for i, shape in ipairs(shapes) do
        local mode
        if nil == circle then
            mode = "line"
        elseif isCollidedWithCircle(shape) then
            mode = "fill"
        else
            mode = "line"
        end

        shape:draw(mode)
        if nil ~= circle then
            circle:draw(mode)
        end
    end
end

function isCollidedWithCircle(shape)
    local shape_left = shape.x
    local shape_right = shape.x + shape.width
    local shape_top = shape.y
    local shape_bottom = shape.y + shape.height

    local circle_left = circle.x
    local circle_right = circle.x + circle.radius
    local circle_top = circle.y
    local circle_bottom = circle.y + circle.radius

    if shape_right > circle_left and
    shape_left < circle_right and
    shape_bottom > circle_top and
    shape_top < circle_bottom then
        return true
    else
        return false
    end
end
