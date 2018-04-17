function love.load()
  -- create new list of rectangles
  listOfRectangles = {}

  -- create rectangle function
  function createSquare()
      rect = {}
      rect.x = 100
      rect.y = 100
      rect.width = 40
      rect.height = 40
      rect.speed = 100

      --Put the new rectangle in the list
      table.insert(listOfRectangles, rect)
  end

  function love.keypressed(key)
    --Remember, 2 equal signs (==) for comparing!
    if key == "space" then
        createSquare()
    end
end

end

function love.draw(dt)
  for i,v in ipairs(listOfRectangles) do
      love.graphics.rectangle("line", v.x, v.y, v.width, v.height)
  end
end

function love.update(dt)
  for i,v in ipairs(listOfRectangles) do
    -- v.x = v.x + v.speed * dt
    if love.keyboard.isDown("right") then
      v.x = v.x + 100 * dt
    elseif love.keyboard.isDown("down") then
      v.y = v.y + 100 * dt
    elseif love.keyboard.isDown("left") then
      v.x = v.x - 100 * dt
    elseif love.keyboard.isDown("up") then
      v.y = v.y - 100 * dt
    end
  end
end
