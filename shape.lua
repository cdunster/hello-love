--! file: The base class of a shape.

Shape = Object:extend()

function Shape:new()
    self.x = 100
    self.y = 100
    self.width = 200
    self.hight = 150
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

function Shape:draw()
    love.graphics.rectangle("line", self.x, self.y, self.width, self.hight)
end
