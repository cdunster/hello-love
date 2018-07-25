--! file: Base class for a character in a game.

Character = Object:extend()

function Character:new(x, y, speed, imageDir)
    self.x = x
    self.y = y
    self.speed = speed
    self.sprite = love.graphics.newImage(imageDir)
    self.width = self.sprite:getWidth()
    self.height = self.sprite:getHeight()
end

function Character:update(dt)
    local window_width = love.graphics.getWidth()

    if 0 > self.x then
        self.x = 0
    elseif window_width < (self.x + self.width) then
        self.x = window_width - self.width
    end
end

function Character:draw()
    love.graphics.draw(self.sprite, self.x, self.y)
end
