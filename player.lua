--! file: Class for the controllable character in a game.

Player = Character:extend()

function Player:new(x, y, speed, imageDir)
    self.super:new(x, y, speed, imageDir)
end

function Player:update(dt)
    if love.keyboard.isDown("left") then
        self.x = self.x - (self.speed * dt)
    elseif love.keyboard.isDown("right") then
        self.x = self.x + (self.speed * dt)
    end
end
