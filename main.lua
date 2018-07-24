--! file: The entry point of the game.

function love.load()
    tick = require("tick")
    Object = require("classic")
    require("shape")
    require("rectangle")

    shapes = {}

    sheepSprite = love.graphics.newImage("resources/sheep.png")

    drawEnemy = false
    tick.delay(function() drawEnemy = true end, 2)
end

function love.keypressed(key)
    if "space" == key then
        table.insert(shapes, Rectangle(100, 100, 150, 50, "blue"))
    end
end

function love.update(dt)
    tick.update(dt)

    if drawEnemy then
        local x = math.random(0, 500)
        local y = math.random(0, 500)
        local size = math.random(50, 200)
        enemy = Rectangle(x, y, size, size, "red")
        drawEnemy = false
    end

    for i, shape in ipairs(shapes) do
        shape:update(dt)
    end
    
end

function love.draw()
    love.graphics.reset()
    love.graphics.draw(sheepSprite, 0, 500)

    for i, shape in ipairs(shapes) do
        local mode
        if nil == enemy then
            mode = "line"
        elseif isCollidedWithEnemy(shape) then
            mode = "fill"
        else
            mode = "line"
        end

        shape:draw(mode)
        if nil ~= enemy then
            enemy:draw(mode)
        end
    end
end

function isCollidedWithEnemy(shape)
    local shape_left = shape.x
    local shape_right = shape.x + shape.width
    local shape_top = shape.y
    local shape_bottom = shape.y + shape.height

    local enemy_left = enemy.x
    local enemy_right = enemy.x + enemy.width
    local enemy_top = enemy.y
    local enemy_bottom = enemy.y + enemy.height

    if shape_right > enemy_left and
    shape_left < enemy_right and
    shape_bottom > enemy_top and
    shape_top < enemy_bottom then
        return true
    else
        return false
    end
end
