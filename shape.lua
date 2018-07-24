--! file: The base class of a shape.

Shape = Object:extend()

function Shape.new(self)
    self.x = 100
    self.y = 100
    self.width = 200
    self.hight = 150
    self.step = 50
end
