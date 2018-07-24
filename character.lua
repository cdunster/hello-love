--! file: Base class for a character in a game.

Character = Object:extend()

function Character:new(x, y, speed, imageDir)
    self.x = x
    self.y = y
    self.speed = speed
    self.sprite = love.graphics.newImage(imageDir)
end

function Character:draw()
    love.graphics.draw(self.sprite, self.x, self.y)
end
