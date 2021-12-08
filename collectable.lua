collectables = {}

function spawnCollectable(x, y, type)
    local col = world:newRectangleCollider(x, y, 40, 40, {collision_class = "Collectable"})
    col:setFixedRotation(true)
    col:setType('static')

    if type == "Coin" then
        col.sprite = sprites.coin
        col.score = 10
        col.sound = sounds.coin
    elseif type == "Star" then
        col.sprite = sprites.star
        col.score = 100
        col.sound = sounds.star
    end
    table.insert(collectables, col)
end

function collect(collectable)
    for i, col in ipairs(collectables) do 
        if col == collectable then 
            player.score = player.score + collectable.score
            col.sound:play()
            table.remove(collectables, i)
            col:destroy()
            break
        end
    end
    
end

function drawCollectables()
    for i, c in ipairs(collectables) do
        local cx, cy = c:getPosition()
        love.graphics.draw(c.sprite, c:getX(), c:getY(), nil, 0.1, 0.1, 240, 240)
    end
end

