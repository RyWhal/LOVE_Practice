function love.load()
  tick = require "tick"
  --Create a boolean
  drawRectangle = false

  --The first argument is a function
  --The second argument is the time it takes to call the function
  tick.delay(function () drawRectangle = true end ,   2)

  x = 50
  y = 50
end

function love.draw()
  --if drawRectangle is true then draw a rectangle
  if drawRectangle then
    love.graphics.rectangle("fill", x, y, 300, 200)
  end

  -- update rectangles x and y to a random place
  function love.keypressed(key)
    --If space is pressed then..
    if key == "space" then
        --x and y become a random number between 100 and 500
        x = math.random(100, 500)
        y = math.random(100, 500)
    end
  end
end


function love.update(dt)
    tick.update(dt)
end
