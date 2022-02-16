--REDUCE TOKENS BY
--merge new bullet sfx() to addbullet() ? (exception would be for the wallshooter)

enemies = {}

--universal functions:
function enemyshot(enemy)
    enemy.inv = 0.5
    --reduce health
    enemy.health -= 1
    if enemy.health > 0 then
        sfx(16, 2)
        explosion(enemy.x+rnd(enemy.w), enemy.y+rnd(enemy.h)) --explode!!!!!!
    end
end

function enemycollide(enemy, object) --f this enemy collides with something, do damage to both it and itself. also EXPLODE!!!
    local rnd,explosion = rnd,explosion
    local _ENV = enemy --trying to save tokens?
    if x <= object.x+object.w and x+w >= object.x and y <= object.y +object.h and y+h >= object.y and object.inv < 0 then
        object:shot()
        explosion(x+4+rnd(w-4), y+4*rnd(h-4))
        health -= 2
    end
end

function enemydie(enemy, sound, soundchannel)
    for i = 1, rnd(enemy.h)+6, 1 do
        addcircle(enemy.x+rnd(enemy.w), enemy.y+rnd(enemy.h), rnd(4)-2, -rnd(2)-1, 1, 2, rnd({3, 11, 9}), -0.1)
    end
    if rnd(100) > 95 then
        addpickup(enemy.x+rnd(enemy.w), enemy.y+rnd(enemy.h))
    end
    if shake < 3 then
        shake = enemy.h/2
    end
    sfx(sound, soundchannel)
    explosion(enemy.x, enemy.y, enemy.w, enemy.h)
    del(enemies, enemy)
end

function enemymisc(enemy) --misc stuff every enemy needs
    enemy.shootcooldown -= ft
    enemy.inv -= ft
    for i = 1, #players, 1 do
        enemy.collide(enemy, players[i])
    end
    if enemy.x < -enemy.w then
        del(enemies, enemy) -- delete enemy if off screen
    end
end







function addbasicenemy(x, y, speed) --basic small weak enemy
    local enemy = {
        x = x,
        y = y,
        w = 8,
        h = 8,
        inv = -1,
        sprite = rnd({14, 30, 46, 62}), --these are all possible 8x8 basic enemy sprites
        health = 1,
        shootcooldown = rnd(2)+1,
        speed = speed,
        shot = enemyshot,
        collide = enemycollide
    }

    function enemy.draw(enemy)
        local sprite = enemy.sprite
        if flr(sin(time()*speed)) ~= 0 then --if the ships heading up, change sprite
            sprite += 1
        end
        if enemy.inv < 0 or ceil(enemy.inv*10%2) == 1 then
            spr(sprite, enemy.x, enemy.y)
        end
    end

    function enemy.update()
        enemy.x -= speed
        enemy.y += sin(time()*speed)*speed
        if enemy.shootcooldown < 0 then
            enemy.shootcooldown = 0.5 + rnd(1.5)
            if enemy.x < 124 and enemy.x > 5 then
                addbullet(enemy.x-3, enemy.y, -1, 0) -- shoot if on screen
                sfx(15, 2) -- play shoot sound if on screen
            end
        end
        enemymisc(enemy)
        if enemy.health <= 0 then -- die!!!!!
            enemydie(enemy,17,2)
        end
    end

    add(enemies, enemy)
end

--SHOOTER THAT SHOOTS BIG WALLS!!!!!!

function addwallshooter(x, shootup, health, speed, offset, bulletspeed)
    local enemy = {
        x = x,
        y = 119,
        sprite = 60,
        offset = offset or rnd(),
        w = 8,
        h = 8,
        inv = -1,
        health = health,
        shootcooldown = 0,
        speed = speed,
        shoottoggle = true,
        bulletspeed = bulletspeed or 1,
        shot = enemyshot,
        collide = enemycollide
    }
    if shootup then
        enemy.y = 1
        enemy.sprite = 44
    end

    function enemy.draw(enemy)
        if enemy.health < enemy.health*0.25 then
            damagesmoke(enemy)
        end
        if enemy.inv < 0 or ceil(enemy.inv*10%2) == 1 then
            spr(enemy.sprite+t()*10%2, enemy.x, enemy.y)
        end
    end

    function enemy.update()
        enemy.x -= speed
        if enemy.shootcooldown < 0 then
            if (t()+enemy.offset)%1>0.5/enemy.bulletspeed then
                enemy.shootcooldown = 0.08/enemy.bulletspeed
                local vely = -1
                if shootup then vely = 1 end
                if enemy.x < 120 and enemy.x > 20 then
                    addbullet(enemy.x, enemy.y, -enemy.speed, enemy.bulletspeed*vely)
                    if not enemy.shoottoggle then --implemented a toggle so that the sound effect for firing gets played only once.
                        enemy.shoottoggle = true
                        sfx(18, 3)
                    end
                end
            else
                enemy.shoottoggle = false
            end
        end
        enemymisc(enemy)
        if enemy.health <= 0 then
            enemydie(enemy,17,2)
        end
    end

    add(enemies, enemy)
end

--Big ol fella that shoots CIRCLES of BULLETS!!!!!!

function addballshooter(x, y, speed)
    local enemy = {
        x = x,
        y = y,
        offset = rnd(),
        w = 8*3,
        h = 8*2,
        inv = -1,
        health = 12,
        shootcooldown = 0,
        speed = speed,
        shot = enemyshot,
        collide = enemycollide
    }

    function enemy.draw(enemy)
        if enemy.inv < 0 or ceil(enemy.inv*10%2) == 1 then
            local sprite = 11
            if enemy.health < 4 then
                damagesmoke(enemy)
                sprite = 27
            end
            spr(sprite, enemy.x, enemy.y, 3, 1, false, true)
            spr(sprite, enemy.x, enemy.y+8, 3, 1)
        end
    end

    function enemy.update()
        enemy.x -= speed
        if enemy.shootcooldown < 0 then
            enemy.shootcooldown = 2
            if enemy.x < 126 and enemy.x > 0 then
                for i = 1, 48, 1 do --shoot ring of bullets if on screen
                    if sin(i/48) < 0.3 and sin((i+currentwavetime)/8) < 0.4 then
                        addbullet(enemy.x+4, enemy.y+4, sin(i/48)/2, cos(i/48)/2)
                    end
                end
                sfx(19, 3) -- play shoot sound
            end
        end
        enemymisc(enemy)
        if enemy.health <= 0 then
            enemydie(enemy,20,3)
        end
    end

    add(enemies, enemy)
end

function addtargetingenemy(x, y, speed)
    local enemy = {
        x = x,
        y = y,
        w = 16,
        h = 8,
        inv = -1,
        health = 3,
        shootcooldown = rnd(0.4)+0.2,
        speed = speed,
        bulletcounter = 0,
        shot = enemyshot,
        collide = enemycollide
    }

    function enemy.draw(enemy)
        if enemy.health < 2 then
            damagesmoke(enemy)
        end
        if enemy.inv < 0 or ceil(enemy.inv*10%2) == 1 then
            spr(58, enemy.x, enemy.y, 2, 1)
        end
    end

    function enemy.update()
        enemy.x -= speed
        if enemy.shootcooldown < 0 and currentwavetime%1.5>1.2 then
            enemy.shootcooldown = 0.1
            enemy.bulletcounter += 1
            local p = enemy.bulletcounter%#players+1
            if enemy.x < 126 and players[p].x < enemy.x+30 then --math involving a distance check to get the proper velocity for aiming
                local distance = sqrt((players[p].x - enemy.x)^2+(players[p].y - enemy.y)^2)
                local velx = (players[p].x - enemy.x)/distance
                local vely = (players[p].y - enemy.y)/distance
                addbullet(enemy.x-3, enemy.y, velx, vely) -- shoot if on screen
                sfx(15, 2) -- play shoot sound if on screen
            end
        end
        enemymisc(enemy)
        if enemy.health <= 0 then -- die!!!!!
            enemydie(enemy,17,2)
        end
    end

    add(enemies, enemy)
end

function addlasershooter(x, y, speed, stay)
    local enemy = {
        x = x+128,
        y = y,
        w = 8*4,
        h = 8*4,
        speed = speed,
        stay = stay,
        inv = -1,
        health = 36 * #players, -- double health if 2 player --36
        lasertimer = 0,
        firedlaser = false,
        shootcooldown = 0,
        moveoffset = 0,
        sinspeed = 4,
        shot = enemyshot,
        collide = enemycollide
    }
    if stay then enemy.y = 64-20 end

    function enemy:draw()
        if enemy.inv < 0 or ceil(enemy.inv*10%2) == 1 then
            local sprite = 64
            if enemy.health < 10 then
                damagesmoke(enemy)
                sprite = 96
            end
            spr(sprite,enemy.x+0,enemy.y+4,4,2)
            spr(sprite,enemy.x+0,enemy.y+20,4,2,false,true)
        end
    end

    function enemy.update()
        if enemy.x > 90 or (not stay and enemy.lasertimer > 4) then --enemy lerps into place when first added, and if they leave they speed up
            enemy.x -= enemy.speed/2
            if enemy.lasertimer > 4 then
                enemy.speed += 0.025
            else
                enemy.x = enemy.x + 0.03 * (90 - enemy.x);
            end
        end

        if enemy.lasertimer > 4 and stay then
            enemy.y = 64-20 + sin(enemy.moveoffset+enemy.lasertimer/enemy.sinspeed) * 40
            if enemy.shootcooldown < 0 then
                enemy.shootcooldown = 0.18
                addbullet(enemy.x+6, enemy.y+20, -1, rnd(2)-1) --shoooot!!!!!
                sfx(15, 2)
            end
        end

        if enemy.x <= 90 then
            if not enemy.firedlaser then
                addlaser(enemy.x+6, enemy.y+20, 10)
                enemy.moveoffset = rnd({0,0.5}) --add offset so not moving in same direction each time
                enemy.sinspeed = rnd({4,4,4,4,4,4,4,4,4,4,4,4,1,8,2,2,2,2}) --add differing speeds to sin up and down randomly
                if enemy.health < 15*#players then
                    enemy.sinspeed /= 2
                end
            end
            enemy.firedlaser = true
            enemy.lasertimer += ft
            if enemy.lasertimer > 8 and stay then
                enemy.firedlaser = false
                enemy.lasertimer = 0
            end
        end

        enemymisc(enemy)

        if enemy.health <= 0 then -- die!!!!!
            if stay then
                music(-1, 3000)
            end
            enemydie(enemy,21,3)
            addpickup(enemy.x+rnd(32), enemy.y+rnd(32), "health")
            addpickup(enemy.x+rnd(32), enemy.y+rnd(32))
            addpickup(enemy.x+rnd(32), enemy.y+rnd(32))
        end
    end

    add(enemies, enemy)
end


--ERROR damage model has incorrect tiling (also it doesnt work??)
function addwallboss(x, y, length, speed, stay, move)
    local enemy = {
        stay = stay or false,
        move = move or 1,
        x = x,
        y = y,
        length = mid(4,length,16),
        w = 16,
        h = 8*length,
        inv = -1,
        health = 10*length*#players, --10
        shootcooldown = 3,
        speed = speed,
        bulletfired = {},
        shot = enemyshot,
        collide = enemycollide
    }

    for i = 1, length, 1 do
        enemy.bulletfired[i] = 0
    end

    function enemy.draw(enemy)
        local dmg = 0
        if enemy.health < enemy.health*0.25 then
            damagesmoke(enemy)
            dmg = 16
        end
        if enemy.inv < 0 or ceil(enemy.inv*10%2) == 1 then
            for i = 2, length-1, 1 do
                spr(93+enemy.bulletfired[i]+dmg, enemy.x, -8+enemy.y+i*8)
                if i < length-2 then
                    spr(79+((i%3)%2*16)+dmg*2, enemy.x+8, -8+enemy.y+i*8, 1, 1, false, (i%3 == 2))
                end
            end
            spr(77+enemy.bulletfired[1]+dmg*2, enemy.x, enemy.y)
            spr(77+enemy.bulletfired[1]+dmg*2, enemy.x, enemy.y+length*8-8, 1, 1, false, true)
            spr(70+dmg,enemy.x+8,enemy.y,2,2)
            spr(70+dmg*2,enemy.x+8,enemy.y+length*8-16,2,2,false,true)
            spr(79+dmg,enemy.x+8,enemy.y+length*8-24,1,1, false, true)
        end
    end

    function enemy.update()
        if not enemy.stay then
            enemy.x -= speed
        else 
            enemy.x = enemy.x + 0.025 * (102 - enemy.x); --lerp if boss
            enemy.move = flr((currentwavetime/5)%5) -- loops through moveset
        end
        if enemy.shootcooldown < 0 then
            enemy.shootcooldown = 0.095
            if enemy.x < 129 then

                local function attack(i, move) -- these are all the conditions to shoot depending on what "move" this guys on
                    if move == 0 and (flr((t()*4)%length) == i or flr((-t()*4)%length) == i) and i%2 == 1 then --this one shoots lines in a pattern
                        return true
                    elseif move == 1 then -- this one targets the players and shoots some random ones
                        for p = 1, #players, 1 do
                            if flr(players[p].y/8) == i-1 and everysecondtimer < 0.7 then
                                return true
                            end
                        end
                    elseif move == 2 and i == ceil(rnd(length)) then -- this one is just random ones
                        return true
                    elseif move == 3 then --this one is that neat weaving pattern, shout out to don't get a virus fans!
                        if i > length/3 and i < length/3*2 then
                            if everysecondtimer < 0.1 then
                                return true
                            end
                        elseif everysecondtimer > 0.5 and everysecondtimer < 0.6 then
                            return true
                        end
                    elseif move == 4 and (i < length/3+sin(t()/2)*3 or i > length/3*2+sin(t()/2)*3) then -- this one is a wavy bullet corridor
                        return true
                    end
                end

                for i = 1, length, 1 do
                    if attack(i, enemy.move) then
                        addbullet(enemy.x, enemy.y-8+i*8, -1, 0)
                        sfx(15, 2)
                        enemy.bulletfired[i] = 1
                    else
                        enemy.bulletfired[i] = 0
                    end
                end
            end
        end
        enemymisc(enemy)
        if enemy.health <= 0 then -- die!!!!!
            music(-1, 3000)
            enemydie(enemy,21,3)
            addpickup(enemy.x+rnd(32), enemy.y+rnd(32), "health")
            addpickup(enemy.x+rnd(32), enemy.y+rnd(32))
            addpickup(enemy.x+rnd(32), enemy.y+rnd(32))
        end
    end

    add(enemies, enemy)
end

function addbomb(x, y, delay) --BIG BOMB!!!! KILL IIT QUICKLY!!!!
    local enemy = {
        x = x,
        y = y,
        w = 32,
        h = 32,
        inv = -1,
        health = 12,
        shootcooldown = 0+delay,
        shot = enemyshot,
        collide = enemycollide
    }

    function enemy.draw(enemy)
        local sprite = 73
        if everysecondtimer > 0.5 then sprite = 75 end
        if enemy.health < 7 then
            damagesmoke(enemy)
            sprite += 32
        end
        if enemy.inv < 0 or ceil(enemy.inv*10%2) == 1 then
            circfill(enemy.x+15, enemy.y+16, sin(enemy.shootcooldown^2)*3-enemy.shootcooldown, rnd({7,11,3}))
            local offset = mid(0, -enemy.shootcooldown-2, 3)
            spr(sprite, enemy.x, enemy.y-offset, 2, 2)
            spr(sprite, enemy.x, enemy.y+16+offset, 2, 2, false, true)
            spr(sprite, enemy.x+15, enemy.y-offset, 2, 2, true)
            spr(sprite, enemy.x+15, enemy.y+16+offset, 2, 2, true, true)
        end
    end

    function enemy.update()
        enemy.y += sin(time()/3)/8
        if enemy.shootcooldown < -8 then -- detonation
            for i = 1, 60, 1 do
                addbullet(enemy.x+16, enemy.y+16, sin(i/60), cos(i/60))
                enemy.health = 0
                sfx(19,2)
                sfx(8,-2)
            end
        elseif enemy.shootcooldown < 0 then
            enemy.x = enemy.x + 0.02 * (80 - enemy.x);
        end
        enemymisc(enemy)
        if enemy.health <= 0 then -- die!!!!!
            enemydie(enemy,20,3)
        end
        --charge sound
        if enemy.x < 120 and everysecondtimer > 0.45 then
            if enemy.shootcooldown < -5 then
                sfx(8,2) --rapid
            else
                sfx(7,2) --normal
            end
        end 
    end

    add(enemies, enemy)
end


function addmissileboss(x, y) --boss that shoots missiles!!!
    local enemy = {
        x = x,
        y = y,
        targetx = 90,
        targety = 48,
        targetchangetimer = 2,
        w = 32,
        h = 32,
        inv = -1,
        health = 40*#players, --40
        shootcooldown = 1.8,
        speed = 0.04,
        shot = enemyshot,
        collide = enemycollide
    }

    function enemy.draw(enemy)
        local sprite = 68
        if enemy.health < 11 then
            sprite = 100
            damagesmoke(enemy)
        end
        if enemy.inv < 0 or ceil(enemy.inv*10%2) == 1 then
            spr(sprite, enemy.x, enemy.y, 4, 2)
            spr(sprite, enemy.x, enemy.y+16, 4, 2, false, true)
        end
    end

    function enemy.update(enemy)
        local playertarget = ceil((t()/2.4)%#players)
        enemy.targetchangetimer -= ft
        --some cool different moves, shout out to dont get a virus fans!
        if currentwavetime%18 > 8 and currentwavetime%20 < 12 then
            enemy.targety = flr(everysecondtimer*1.99)*96
        elseif currentwavetime%18 > 17.3 then --INTIMIDATION TACTICS!!!!!
            enemy.targety = players[playertarget].y
            enemy.targetx = players[playertarget].x+24
            enemy.shootcooldown = 0.4
        end
        enemy.x = enemy.x + enemy.speed * (enemy.targetx - enemy.x);
        enemy.y = enemy.y + enemy.speed * (enemy.targety - enemy.y);
        if enemy.targetchangetimer < 0 then
            enemy.targetchangetimer = rnd(0.3)+0.5
            enemy.targetx = 80+rnd(16)
            enemy.targety = rnd(96)
        end
        if enemy.shootcooldown < 0 then
            enemy.shootcooldown = 0.3 + rnd(1.2)
            if enemy.x < 122 and players[playertarget] ~= nil then
                local offset = 2
                if currentwavetime%2 > 1 then offset = 30 end
                addmissile(enemy.x, enemy.y+offset, playertarget)
                if enemy.health < 11 then
                    sfx(15, 2)
                    addbullet(enemy.x,enemy.y+16,(players[playertarget].x-enemy.x)/70,(players[playertarget].y-enemy.y-16)/70)
                    -- ERROR attempting to find a non existant player
                end
                enemy.speed += 0.001
            end
        end
        enemymisc(enemy)
        if enemy.health <= 0 then -- die!!!!!
            music(-1, 3000)
            sfx(60,-2) --stop missle sound
            enemydie(enemy,21,3)
            addpickup(enemy.x+rnd(32), enemy.y+rnd(32), "health")
            addpickup(enemy.x+rnd(32), enemy.y+rnd(32))
            addpickup(enemy.x+rnd(32), enemy.y+rnd(32))
        end
    end

    add(enemies, enemy)
end