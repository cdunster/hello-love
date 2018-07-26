--! file: The entry point of the game.

function love.load()
    Object = require("classic")
    require("character")
    require("player")
    require("enemy")
    require("bullet")

    love.graphics.setNewFont(20)

    score = 0
    player = Player(350, 500, 500, "resources/panda.png")
    enemy = Enemy(0, 20, 200, "resources/snake.png")
    listOfBullets = {}
end

function love.update(dt)
    player:update(dt)
    enemy:update(dt)

    for i, bullet in ipairs(listOfBullets) do
        bullet:update(dt)
        bullet:checkCollision(enemy)

        if bullet.dead then
            table.remove(listOfBullets,i)
        end
    end
end

function love.draw()
    player:draw()
    enemy:draw()
    
    for i, bullet in ipairs(listOfBullets) do
        bullet:draw()
    end

    love.graphics.print("Score: " .. score, 20, 20)
end

function love.keypressed(key)
    player:keypressed(key)
end
