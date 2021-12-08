function love.load()
    love.window.setMode(1000, 768
)
    anim8 = require 'libraries/anim8/anim8'
    wf = require 'libraries/windfield/windfield'
    sti = require 'libraries/Simple-Tiled-Implementation/sti'
    cameraFile = require 'libraries/hump/camera'

    gameState = 1

    gameFont = love.graphics.newFont(40)
    love.graphics.setFont(gameFont)

    cam = cameraFile()

    sounds = {}

    sounds.jump = love.audio.newSource("audio/jump.wav", "static")
    sounds.music = love.audio.newSource("audio/music.mp3", "stream")
    sounds.music:setLooping(true)
    sounds.music:setVolume(0.2)

    sounds.coin = love.audio.newSource("audio/coin.wav", "static")
    sounds.star = love.audio.newSource("audio/star.wav", "static")

    sounds.music:play()

    love.window.setTitle("Platformer")
    love.graphics.setBackgroundColor(0.9, 0.6, 0.7)

    sprites = {}
    sprites.playersheet = love.graphics.newImage('sprites/playerSheet.png')
    sprites.enemySheet = love.graphics.newImage('sprites/enemySheet.png')
    sprites.background = love.graphics.newImage('sprites/background.png')
    sprites.flagSheet = love.graphics.newImage('sprites/flagSheet3.png')

    sprites.coin = love.graphics.newImage('sprites/coin.png')
    sprites.star = love.graphics.newImage('sprites/star.png')

    local grid = anim8.newGrid(614, 564, sprites.playersheet:getWidth(), sprites.playersheet:getHeight())

    animations = {}
    animations.idle = anim8.newAnimation(grid('1-15', 1), 0.03)
    animations.jump = anim8.newAnimation(grid('1-7', 2), 0.03)
    animations.run = anim8.newAnimation(grid('1-15', 3), 0.03)

    enemyGrid = anim8.newGrid(100, 79, sprites.enemySheet:getWidth(), sprites.enemySheet:getHeight())

    flagGrid = anim8.newGrid(60, 80, sprites.flagSheet:getWidth(), sprites.flagSheet:getHeight())
    animations.flag = anim8.newAnimation(flagGrid('1-5', 1), 0.08)

    animations.enemy = anim8.newAnimation(enemyGrid('1-2', 1), 0.03)

    world = wf.newWorld(0, 800, false)
    world:setQueryDebugDrawing(true)

    world:addCollisionClass('Platform')
    world:addCollisionClass('Danger', { ignores = {'Danger'} })
    world:addCollisionClass('Player', { ignores = {'Danger'} })
    world:addCollisionClass('Collectable', { ignores = {'Danger', 'Platform', 'Player'} })
    
    require('player')
    require('enemy')
    require('libraries/show')
    require('collectable')

    flag = world:newRectangleCollider(0, 0, 60, 100, {collision_class = "Collectable"})
    flag:setFixedRotation(true)
    flag.animation = animations.flag

    dangerZone = world:newRectangleCollider(-500, 800, 5000, 50, {collision_class = "Danger"})
    dangerZone:setType('kinematic')

    platforms = {}

    flagX = 0
    flagY = 0

    spawnX = 0
    spawnY = 0

    flagLevel = nil

    saveData = {}
    saveData.currentLevel = "level1"

    if love.filesystem.getInfo("data.lua") then 
        local data = love.filesystem.load("data.lua")
        data(saveData)
    end
end

function love.update(dt)
    if gameState == 2 then
        world:update(dt)
        gameMap:update(dt)
        flag.animation:update(dt)

        if player.body then 
            playerUpdate(dt)
            local px, py = player:getPosition()
            local mapWidth = gameMap.width * gameMap.tilewidth
            
            if px < love.graphics.getWidth() / 2 then
                cam:lookAt(love.graphics.getWidth() / 2, love.graphics.getHeight() / 2)
            elseif px > mapWidth - love.graphics.getWidth() / 2 then
                cam:lookAt(mapWidth - love.graphics.getWidth() / 2, love.graphics.getHeight() / 2)
            else
                cam:lookAt(px, love.graphics.getHeight() / 2)
            end

            local colliders = world:queryCircleArea(flagX, flagY, 10, {'Player'})
            if #colliders > 0 then
                loadMap(flagLevel)
            end
        end

    updateEnemies(dt)

    end
end

function love.draw()
    love.graphics.draw(sprites.background, 0, 0)
    if gameState == 2 then 
        cam:attach()
            gameMap:drawLayer(gameMap.layers["Tile Layer 1"])
            --world:draw()
            playerDraw()
            drawEnemies()
            drawCollectables()

            flag.animation:draw(sprites.flagSheet, flagX, flagY, nil, 1.2, 1.2, 0, 18)

        cam:detach()
        love.graphics.printf("Score: " ..player.score, 0, love.graphics.getHeight() - 100, love.graphics.getWidth(), "right")
    elseif gameState == 1 then 
        love.graphics.printf("Jump Game!", 0, 500, love.graphics.getWidth(), "center")
        love.graphics.printf("Press Space to Start!", 0, 600, love.graphics.getWidth(), "center")
    end
end

function love.keypressed(key)
    if key == 'space' then
        if gameState == 2 then
             if player.body then
                if player.isGrounded then
                    player:applyLinearImpulse(0, -4000)
                    player.isJumping = true
                    sounds.jump:play()
                end
            end
        elseif gameState == 1 then
            gameState = 2
            loadMap(saveData.currentLevel)
        end
    end
end

function spawnPlatform(x, y, w, h)
    if w > 0 and h > 0 then 
        local platform = world:newRectangleCollider(x, y, w, h, {collision_class = "Platform"})
        platform:setType('static')
        table.insert(platforms, platform)
    end
end

function destroyAll()
    local i = #platforms
    while i > -1 do
        if platforms[i] ~= nil then
            platforms[i]:destroy()
        end
        table.remove(platforms, i)
        i = i-1
    end

    local i = #enemies
    while i > -1 do
        if enemies[i] ~= nil then
            enemies[i]:destroy()
        end
        table.remove(enemies, i)
        i = i-1
    end

    local i = #collectables
    while i > -1 do
        if collectables[i] ~= nil then
            collectables[i]:destroy()
        end
        table.remove(collectables, i)
        i = i-1
    end
end

function spawnFlag(flagX, flagY)
    flag:setPosition(flagX, flagY)
end 

function loadMap(mapName)
    saveData.currentLevel = mapName
    love.filesystem.write("data.lua", table.show(saveData, "saveData"))
    destroyAll()
    gameMap = sti("maps/"..mapName..".lua")

    for i, obj in pairs(gameMap.layers["Platforms"].objects) do
        spawnPlatform(obj.x, obj.y, obj.width, obj.height)
    end
    
    for i, e in pairs(gameMap.layers["Enemies"].objects) do
        spawnEnemy(e.x, e.y, e.properties["Speed"])
    end

    for i, obj in pairs(gameMap.layers["Flag"].objects) do
        flagX = obj.x
        flagY = obj.y
        spawnFlag(flagX, flagY)
        flagLevel = obj.properties["NextLevel"]
    end

    for i, pos in pairs(gameMap.layers["Spawn"].objects) do
        spawnX = pos.x
        spawnY = pos.y
    end

    for i, col in pairs(gameMap.layers["Collectables"].objects) do
        spawnCollectable(col.x, col.y, col.properties["Type"])
    end

    respawn()
end
