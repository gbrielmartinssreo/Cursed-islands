local player

-- Escolha o personagem aqui:
local character = "victor_adult"
-- local character = "victor_young"

local SCALE = 1.5

local function loadAnimation(character, direction)
    local frames = {}

    for i = 0, 7 do
        local path = string.format(
            "assets/sprites/%s/%s/an%d.png",
            character,
            direction,
            i
        )

        frames[#frames + 1] = love.graphics.newImage(path)
    end

    return frames
end

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")

    player = {
        x = 100,
        y = 100,
        speed = 200,

        animations = {
            left = loadAnimation(character, "left"),
            right = loadAnimation(character, "right")
        },

        direction = "right",
        frame = 1,
        timer = 0,
        frameDuration = 0.12,
        moving = false
    }
end

function love.update(dt)
    local dx, dy = 0, 0

    -- Captura os movimentos WASD
    if love.keyboard.isDown("a") then
        dx = dx - 1
    end

    if love.keyboard.isDown("d") then
        dx = dx + 1
    end

    if love.keyboard.isDown("w") then
        dy = dy - 1
    end

    if love.keyboard.isDown("s") then
        dy = dy + 1
    end

    -- Impede que a diagonal seja mais rápida
    local length = math.sqrt(dx * dx + dy * dy)

    if length > 0 then
        dx = dx / length
        dy = dy / length

        player.x = player.x + dx * player.speed * dt
        player.y = player.y + dy * player.speed * dt
    end

    -- Atualiza a direção horizontal
    if dx < 0 then
        player.direction = "left"
    elseif dx > 0 then
        player.direction = "right"
    end

    -- Só anima quando existe movimento horizontal
    player.moving = dx ~= 0

    if player.moving then
        player.timer = player.timer + dt

        while player.timer >= player.frameDuration do
            player.timer = player.timer - player.frameDuration

            local frames = player.animations[player.direction]
            player.frame = player.frame % #frames + 1
        end
    else
        player.frame = 1
        player.timer = 0
    end
end

function love.draw()
    local frames = player.animations[player.direction]
    local sprite = frames[player.frame]

    love.graphics.draw(
        sprite,
        player.x,
        player.y,
        0,
        SCALE,
        SCALE
    )
end
