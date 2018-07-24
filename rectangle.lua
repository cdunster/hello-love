--! file: The class for drawing a rectangle on the screen.

Rectangle = Shape:extend()

function Rectangle:new(x, y, width, height, colour)
    Rectangle.super.new(self, x, y)
    self.width = width
    self.height = height
    self.colour = colour
end

function Rectangle:draw(mode)

    if "red" == self.colour then
        love.graphics.setColor(255, 0, 0, 255)
    elseif "blue" == self.colour then
        love.graphics.setColor(0, 0, 255, 255)
    else
        love.graphics.setColor(255, 255, 255, 255)
    end
    
    love.graphics.rectangle(mode, self.x, self.y, self.width, self.height)
end
