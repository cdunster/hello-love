--! file: Class for the non-controllable enemy character(s) in a game.

Enemy = Character:extend()

function Enemy:new(x, y, speed, imageDir)
    Enemy.super.new(self, x, y, speed, imageDir)
    self.directionMultiplier = 1
end

function Enemy:update(dt)
    local window_width = love.graphics.getWidth()

    local directional_speed = self.speed * self.directionMultiplier
    self.x = self.x + (directional_speed * dt)

    if 0 > self.x then
        self.directionMultiplier = 1
    elseif window_width < (self.x + self.width) then
        self.directionMultiplier = -1
    end
end
