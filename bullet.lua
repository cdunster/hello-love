--! file: Class for the non-controllable bullet in a game.

Bullet = Character:extend()

function Bullet:new(x, y, speed, imageDir)
    Bullet.super.new(self, x, y, speed, imageDir)
end

function Bullet:update(dt)
    self.y = self.y - (self.speed * dt)
end
