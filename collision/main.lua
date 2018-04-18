--! file:main.Lua

function love.load()
  --Create a couple rectangles
  r1 = {
    x = 10,
    y = 100,
    w = 50,
    h = 50
  }

  r2 = {
    x = 250,
    y = 250,
    w = 120,
    h = 120
  }

end

function love.update(dt)
  -- Move r1 around with arrow keys
  if love.keyboard.isDown("right") then
    r1.x = r1.x + 100 * dt
  elseif love.keyboard.isDown("down") then
    r1.y = r1.y + 100 * dt
  elseif love.keyboard.isDown("left") then
    r1.x = r1.x - 100 * dt
  elseif love.keyboard.isDown("up") then
    r1.y = r1.y - 100 * dt
  end

end

function love.draw()
  --We create a local variable called mode
  local mode
  if checkCollision(r1, r2) then
      --If there is collision, draw the rectangles filled
      mode = "fill"
      love.graphics.setColor(1, 0, 0)
  else
      --else, draw the rectangles as a line
      mode = "line"
  end

  --Use the variable as first argument
  love.graphics.rectangle(mode, r1.x, r1.y, r1.w, r1.h)
  love.graphics.rectangle(mode, r2.x, r2.y, r2.w, r2.h)
end

function checkCollision(a, b)
    --With locals it's common usage to use underscores instead of camelCasing
    local a_left = a.x
    local a_right = a.x + a.w
    local a_top = a.y
    local a_bottom = a.y + a.h

    local b_left = b.x
    local b_right = b.x + b.w
    local b_top = b.y
    local b_bottom = b.y + b.h

    --If any sides of the rectangle cross eachother return true
    if a_right > b_left and
    a_left < b_right and
    a_bottom > b_top and
    a_top < b_bottom then
      return true
    else
      return false
    end
end
