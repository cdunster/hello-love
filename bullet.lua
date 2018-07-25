--! file: Class for the non-controllable bullet in a game.

Bullet = Character:extend()

function Bullet:new(x, y, speed, imageDir)
    Bullet.super.new(self, x, y, speed, imageDir)
    self.dead = false
end

function Bullet:update(dt)
    self.y = self.y - (self.speed * dt)
end

function Bullet:checkCollision(obj)
    local self_left = self.x
    local self_right = self.x + self.width
    local self_top = self.y
    local self_bottom = self.y + self.height

    local obj_left = obj.x
    local obj_right = obj.x + obj.width
    local obj_top = obj.y
    local obj_bottom = obj.y + obj.height

    if self_right > obj_left and
    self_left < obj_right and
    self_bottom > obj_top and
    self_top < obj_bottom then
        self.dead = true

        --Increase enemy speed
        obj.speed = obj.speed + 50
    end
end
