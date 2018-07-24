--! file: The base class of a shape.

Shape = Object:extend()

function Shape:new(x, y)
    self.x = x
    self.y = y
    self.step = 50
end

function Shape:update(dt)
    if love.keyboard.isDown("right") then
        self.x = self.x + (self.step * dt)
    elseif love.keyboard.isDown("left") then
        self.x = self.x - (self.step * dt)
    elseif love.keyboard.isDown("up") then
        self.y = self.y - (self.step * dt)
    elseif love.keyboard.isDown("down") then
        self.y = self.y + (self.step * dt)
    end
end
