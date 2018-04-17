function love.load()
  colors = {"green", "red", "purple", "yellow"}
  table.insert(colors, "blue")
  print(#colors)

  --[[for i=1, #colors do
    print(colors[i])
  end]]--

  for i,v in ipairs(colors) do
        print(i, v)
  end
end


function love.update(dt)
end

function love.draw()
  --[[for i=1,#colors do
        love.graphics.print(colors[i], 100, 100 + 50 * i)
  end]]--
  for i,clr in ipairs(colors) do
    love.graphics.print(clr, 100, 100 + 50 * i)
  end
end
