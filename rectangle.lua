--! file: The class for drawing a rectangle on the screen.

Rectangle = Shape:extend()

function Rectangle:new(x, y, width, height)
    Rectangle.super.new(self, x, y)
    self.width = width
    self.height = height
end

function Rectangle:draw(mode)
    love.graphics.rectangle(mode, self.x, self.y, self.width, self.height)
end
