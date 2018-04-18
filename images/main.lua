function love.load()
    myImage = love.graphics.newImage("hrse.png")
    w = myImage:getWidth()
    h = myImage:getHeight()
end

function love.draw()
  love.graphics.draw(myImage, 300, 300)
  love.graphics.draw(myImage, 100, 100, 0, 2, 2, w/2, h/2)
end

function love.update()

end
