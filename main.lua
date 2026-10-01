local player = {
    x = 100,
    y = 100,
    width = 40,
    height = 40,
    speed = 220
}

local enemy = {
    x = 500,
    y = 300,
    width = 50,
    height = 50
}

local score = 0

function love.load()
    love.window.setTitle("Teste Lua + LOVE")
end

function love.update(dt)
    if love.keyboard.isDown("w") then
        player.y = player.y - player.speed * dt
    end

    if love.keyboard.isDown("s") then
        player.y = player.y + player.speed * dt
    end

    if love.keyboard.isDown("a") then
        player.x = player.x - player.speed * dt
    end

    if love.keyboard.isDown("d") then
        player.x = player.x + player.speed * dt
    end

    -- impede sair da tela
    player.x = math.max(0, math.min(player.x, 800 - player.width))
    player.y = math.max(0, math.min(player.y, 600 - player.height))

    -- colisão simples
    if checkCollision(player, enemy) then
        score = score + 1

        enemy.x = math.random(0, 750)
        enemy.y = math.random(0, 550)
    end
end

function love.draw()
    -- jogador
    love.graphics.rectangle(
        "fill",
        player.x,
        player.y,
        player.width,
        player.height
    )

    -- inimigo/alvo
    love.graphics.rectangle(
        "line",
        enemy.x,
        enemy.y,
        enemy.width,
        enemy.height
    )

    love.graphics.print(
        "Score: " .. score,
        10,
        10
    )

    love.graphics.print(
        "WASD para mover",
        10,
        30
    )
end

function checkCollision(a, b)
    return
        a.x < b.x + b.width and
        b.x < a.x + a.width and
        a.y < b.y + b.height and
        b.y < a.y + a.height
end
