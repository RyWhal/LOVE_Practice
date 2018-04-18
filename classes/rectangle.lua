--! file: rectangle.lua

--Note how it uses a column (:) and not a dot (.)
-- Rectangle is a subclass of Shape. Shape controls movement.
Rectangle = Shape:extend()

--Lua turns this into: Rectangle.new(self)
-- Rectangle.super can get access to our baseclass's function
function Rectangle:new(x, y, width, height)
    Rectangle.super.new(self, x, y)
    self.width = width
    self.height = height
end

--[[ Removing this since Shape controls the update now
--Lua turns this into: Rectangle.update(self, dt)
function Rectangle:update(dt)
    self.x = self.x + self.speed * dt
end]]--

--Lua turns this into: Rectangle.draw(self)
function Rectangle:draw()
    love.graphics.rectangle("line", self.x, self.y, self.width, self.height)
end
