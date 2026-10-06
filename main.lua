function love.load()
    player = {
        x = 0,
        y = 0,
        width = 100,
        height = 100,
    }
end

function love.update(dt)
    if love.keyboard.isDown("w") then
        player.y = player.y - 10
    end

    if love.keyboard.isDown("a") then
        player.x = player.x - 10
    end

    if love.keyboard.isDown("s") then
        player.y = player.y + 10
    end

    if love.keyboard.isDown("d") then
        player.x = player.x + 10
    end
end

function love.draw()
    love.graphics.rectangle(
        "fill",
        player.x,
        player.y,
        player.width,
        player.height
    )
end
