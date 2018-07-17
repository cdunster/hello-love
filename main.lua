function love.load()
    x = 100
    y = 100
end

function love.update(dt)

    step = 50 * dt

    if love.keyboard.isDown("right") then
        x = x + step
    elseif love.keyboard.isDown("left") then
        x = x - step
    elseif love.keyboard.isDown("up") then
        y = y - step
    elseif love.keyboard.isDown("down") then
        y = y + step
    end
end

function love.draw()
    love.graphics.rectangle("line", x, y, 200, 150)
end
