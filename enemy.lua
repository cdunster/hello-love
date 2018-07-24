--! file: Class for the non-controllable enemy character(s) in a game.

Enemy = Character:extend()

function Enemy:new(x, y, speed, imageDir)
    Enemy.super.new(self, x, y, speed, imageDir)
end

function Enemy:update(dt)
    local window_width = love.graphics.getWidth()

    self.x = self.x + (self.speed * dt)

    if 0 > self.x then
        self.speed = -self.speed
    elseif window_width < (self.x + self.width) then
        self.speed = -self.speed
    end
end
