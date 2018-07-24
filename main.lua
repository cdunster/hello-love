--! file: The entry point of the game.

function love.load()
    Object = require("classic")
    require("character")
    require("player")
    require("enemy")

    player = Player(350, 500, 500, "resources/panda.png")
    enemy = Enemy(0, 20, 500, "resources/snake.png")
end

function love.update(dt)
    player:update(dt)
    enemy:update(dt)
end

function love.draw()
    player:draw()
    enemy:draw()
end
