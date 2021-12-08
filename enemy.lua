enemies = {}

function spawnEnemy(x, y, speed)
    local enemy = world:newRectangleCollider(x, y, 70, 90, {collision_class = "Danger"})
    enemy:setFixedRotation(true)
    enemy.direction = 1
    if(speed == nil) then 
        enemy.speed = 200
        enemy.animation = animations.enemy
    else 
        enemy.speed = speed
        enemy.animation = anim8.newAnimation(enemyGrid('1-2', 1), 0.03 * (speed / 200))
    end
    table.insert(enemies, enemy)
end

function updateEnemies(dt)
    for i,e in ipairs(enemies) do 
        e.animation:update(dt)
        local ex, ey = e:getPosition()

        local floor_colliders = world:queryRectangleArea(ex + (40 * e.direction), ey + 40, 10, 10, {'Platform'})
        local wall_colliders = world:queryRectangleArea(ex + (40 * e.direction), ey, 10, 10, {'Platform'})

        if #floor_colliders == 0 or #wall_colliders > 0 then
            e.direction = e.direction * -1
        end
        e:setX(ex + e.speed * dt * e.direction)
    end 
end 

function drawEnemies()
    for i, e in ipairs(enemies) do
        local ex, ey = e:getPosition()
        e.animation:draw(sprites.enemySheet, ex, ey, nil, e.direction, 1, 50, 65)
    end
end