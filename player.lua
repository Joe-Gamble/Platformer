player = world:newRectangleCollider(360, 100, 40, 100, {collision_class = "Player"})
player:setFixedRotation(true)
player.speed = 240
player.animation = animations.idle
player.isMoving = false
player.direction = 1
player.isGrounded = true
player.score = 0

function respawn()
    player:setPosition(spawnX, spawnY)
end

function playerUpdate(dt)
    local colliders = world:queryRectangleArea(player:getX() - 20, player:getY() + 50, 40, 2, {'Platform'})

    if #colliders > 0 then 
        player.isGrounded = true
        player.isJumping = false
    else
        player.isGrounded = false
    end

    if player.body then
        local px, py = player:getPosition()
        local x = 0

        player.isMoving = false

        if(love.keyboard.isDown('d')) then
            x = x + 1
            player.isMoving = true
            player.direction = 1
        end

        if(love.keyboard.isDown('a')) then
            x = x - 1
            player.isMoving = true
            player.direction = -1
        end

        player:setX(px + (x * (player.speed * dt)))

        if player:enter('Danger') then 
            respawn()
        end

        if player.isJumping then
            player.animation = animations.jump
        elseif player.isMoving then
            player.animation = animations.run
        else
            player.animation = animations.idle
        end
        player.animation:update(dt)

        local px, py = player:getPosition()

        local collectable_colliders = world:queryCircleArea(px, py, 40, {'Collectable'})

        if #collectable_colliders > 0 then 
            for i, col in ipairs(collectable_colliders) do 
                collect(col)
            end
        end
    end
end

function playerDraw()
    if player.body then
        local px, py = player:getPosition()
        player.animation:draw(sprites.playersheet, px, py, nil, 0.25 * player.direction, 0.25, 130, 300)
    end
end
