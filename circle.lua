--! file: The class for drawing a circle on the screen.

Circle = Shape:extend()

function Circle:new(x, y, radius)
    Circle.super.new(self, x, y)
    self.radius = radius
end

function Circle:draw(mode)
    love.graphics.circle(mode, self.x, self.y, self.radius)
end
