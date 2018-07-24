--! file: The entry point of the game.

function love.load()
    Object = require("classic")
    require("character")
    require("player")

    player = Player(300, 20, 500, "resources/panda.png")
end

function love.update(dt)
    player:update(dt)
end

function love.draw()
    player:draw()
end
