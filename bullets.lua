function addbullet(x, y, velx, vely, good, sprite)
    local bullet = {
    }

    sprite = sprite or 2
    good = good or false

    function bullet.draw(bullet)
        spr(sprite, x, y)
    end

    function bullet.collide(object)
        if x+4 >= object.x and x+4 <= object.x+object.w and y+4 >= object.y and y+4 <= object.y+object.h and object.inv < 0 then
            object:shot()
            del(obj, bullet)
        end
    end

    function bullet.accurate_collide(object)
        if x+4 >= object.x-2 and x+4 <= object.x+2+object.w and y+4 >= object.y-2 and y+4 <= object.y+object.h+2 then
            object:shot()
            del(obj, bullet)
        end
    end

    function bullet.update(bullet)
        --applying velocity
        x += velx
        y += vely

        --collision detection
        if good then
            foreach(enemies, bullet.accurate_collide)
        else
            foreach(players, bullet.collide)
        end

        --delete bullet if off screen
        if y > 128 or y < -8 or x > 128 or x < -8 then
            del(obj, bullet)
        end
    end

    add(obj, bullet)
end

--ERROR Sticks around after boss dies
function addlaser(x, y, r)
    local laser = {
        --lasers!!!!!!!!!!!!!!!
    }
    timer = 0
    playingsound = false

    function laser:draw()
        --local mid,line,pset,circfill,rectfill,sin,cos,t = mid,line,pset,circfill,rectfill,sin,cos,t
        --local _ENV = self
        if timer > 1.5 then
            local radius = (min(timer*r*0.7,r)+sin(t()*6))-mid(0, timer-3, r)*r
            for i = -10, x, 1 do
                line(i, y+radius*sin(t()*3+i/(10+timer^3.5))*1.6, i, y-radius*sin(t()*3+i/(10+timer^3.5))*1.6, 14)
                pset(i, y+(cos(t()+i/50)+sin(i/4.32535+t())*2)*radius/1.8, 14)
            end
            --circfill(x, y, radius, 14)
            --rectfill(-10, y-radius, x, y+radius, 14)
            circfill(x, y, radius*0.7, 11)
            rectfill(-10, y-radius*0.7, x, y+radius*0.7, 11)
            circfill(x, y, radius*0.3, 7)
            rectfill(-10, y-radius*0.3, x, y+radius*0.3, 7)
        else
            circfill(x, y, timer*4+sin(t()*8), 11)
            circfill(x, y, timer*2+sin(t()*8), 7)
            for i = mid(-5, x-timer*x,x), x, 1 do
                pset(i, y+sin(i/(3/(timer/2))-t())*timer*r/2, 11)
                pset(i, y+cos(t()*timer+i/30)*timer*3+sin(i/8.32535+t()), 14)
            end
        end
    end

    function laser.collide(object)
        --local _ENV = laser
        if object.x < x and y+r*2 > object.y+object.h and y-r*2 < object.y and object.inv < 0 then
            object:shot()
        end
    end

    function laser.update(laser)
        timer += 1/60
        --collision detection after the warm up
        if timer > 1.5 and timer < 3.6 then
            if not playingsound then
                sfx(24,3)
                playingsound = true
            end
            shake = rnd(8)/timer
            foreach(players, laser.collide)
            foreach(enemies, laser.collide)
        end

        --delete laser once its done
        if timer > 4 then
            del(obj, laser)
            sfx(25, 3)
            for i = 1, 16, 1 do
                addcircle(rnd(x), y-r/2+rnd(r), -0.5, -0.5, rnd(3), rnd(2), rnd({11,14,3}))
            end
        end
    end

    add(obj, laser)
    sfx(23,3)
end


function addmissile(x, y, target) --basic small weak enemy
    local enemy = {
        --target = target,
        x = x,
        y = y,
        w = 16,
        h = 8,
        inv = -1,
        health = 3,
        speed = 0.3,
        shootcooldown = 0,
        shot = enemyshot,
        collide = enemycollide
    }

    function enemy.draw(enemy)
        if enemy.inv < 0 or ceil(enemy.inv*10%2) == 1 then
            spr(42, enemy.x, enemy.y, 2, 1)
        end
    end

    function enemy.update()
        enemy.x -= enemy.speed
        enemy.speed += 0.015
        enemy.y += (players[target].y - enemy.y)/30
        addcircle(enemy.x+12, enemy.y+rnd(8), 0, rnd()/8, 2.1, 0.6, rnd({9,5}))
        enemymisc(enemy)
        if enemy.health <= 0 then -- die!!!!!
            enemydie(enemy,17,2)
        end
    end

    sfx(14,3) --missle launch/thruster loop
    add(enemies, enemy, 1)
end