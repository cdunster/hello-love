function love.load()
    rect = {}
    rect.x = 100
    rect.y = 100
    rect.width = 200
    rect.hight = 150
    rect.step = 50
end

function love.update(dt)

    step = rect.step * dt

    if love.keyboard.isDown("right") then
        rect.x = rect.x + step
    elseif love.keyboard.isDown("left") then
        rect.x = rect.x - step
    elseif love.keyboard.isDown("up") then
        rect.y = rect.y - step
    elseif love.keyboard.isDown("down") then
        rect.y = rect.y + step
    end
end

function love.draw()
    love.graphics.rectangle("line", rect.x, rect.y, rect.width, rect.hight)
end
