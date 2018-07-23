function love.load()
    rects = {}
end

function createRectangle()
    rect = {}
    rect.x = 100
    rect.y = 100
    rect.width = 200
    rect.hight = 150
    rect.step = 50

    table.insert(rects, rect)
end

function love.keypressed(key)
    if "space" == key then
        createRectangle()
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
