--! file: The entry point of the game.

function love.load()
    Object = require("classic")
    require("character")
    require("player")
    require("enemy")
    require("bullet")

    love.graphics.setNewFont(20)
    gameOver = false

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

    if gameOver then
        love.graphics.setNewFont(35)
        local game_over_y = (love.graphics.getHeight() / 2) - 60
        love.graphics.printf("Game Over!\nScore: " .. score, 0, game_over_y, love.graphics.getWidth(), "center")

        love.graphics.setNewFont(20)
        local try_again_y = (love.graphics.getHeight() / 2) + 20
        love.graphics.printf("Hit any key to try again...", 0, try_again_y, love.graphics.getWidth(), "center")
        return
    end

    player:draw()
    enemy:draw()
    
    for i, bullet in ipairs(listOfBullets) do
        bullet:draw()
    end

    love.graphics.print("Score: " .. score, 20, 20)
end

function love.keypressed(key)
    if gameOver then
        love.load()
        return
    end

    player:keypressed(key)
end
