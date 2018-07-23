require("shape-drawer")

function love.load()
    rects = {}
end

function love.keypressed(key)
    if "space" == key then
        table.insert( rects, createRectangle())
    end
end

function love.update(dt)
    if love.keyboard.isDown("right") then
        for i, rect in ipairs(rects) do
            rect.x = rect.x + (rect.step * dt)
        end
    elseif love.keyboard.isDown("left") then
        for i, rect in ipairs(rects) do
            rect.x = rect.x - (rect.step * dt)
        end
    elseif love.keyboard.isDown("up") then
        for i, rect in ipairs(rects) do
            rect.y = rect.y - (rect.step * dt)
        end
    elseif love.keyboard.isDown("down") then
        for i, rect in ipairs(rects) do
            rect.y = rect.y + (rect.step * dt)
        end
    end
end

function love.draw()
    for i, rect in ipairs(rects) do
        love.graphics.rectangle("line", rect.x, rect.y, rect.width, rect.hight)
    end
end
