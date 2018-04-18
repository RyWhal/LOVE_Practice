--! file: main.lua
--http://sheepolution.com/learn/book/11

function love.load()
    Object = require "classic"
    require "shape"
    require "circle"
    require "rectangle"

    --x, y, width, height
    r1 = Rectangle(200, 100, 200, 50)
    r2 = Circle(180, 300, 50)
end

function love.update(dt)
    --Lua turns this into: r1.update(r1, dt)
    r1:update(dt)
    r2:update(dt)
end

function love.draw()
    --Lua turns this into: r1.draw(r1)
    r1:draw()
    r2:draw()
end
