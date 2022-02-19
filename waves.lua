wave = {} --store wave functions here
currentwave = 19 --THIS IS THE CURRENT WAVE, SHOLD BE 1 UNLESS TESTING SOMETHING
currentwavetime = 0
delaytimer = 0
everysecondtimer = 0
checkpoint = 1
bossmusic = false

--NOTE - slow BG during boss waves / make bosses their own checkpoint

wave[1] = {
    delay = 2,
    start = function()
        addbasicenemy(150, 60, 0.15)
    end,
}

for i = 2, 16, 1 do
    wave[i] = {}
end

wave[2] = {
    delay = 2,
    start = function()
        addbasicenemy(128, 30, 0.4)
        addtargetingenemy(128, 60, 0.1)
        addbasicenemy(128, 90, 0.4)
    end,
    conditions = function()
        if #enemies < 2 then return true
        end
    end
}

wave[3] = {
    delay = 2,
    start = function()
        for i = 1, 7, 1 do
            addbasicenemy(128, i*16, 0.5 + 0.075*i)
            addbasicenemy(170, i*16, 1.05 - 0.075*i)
        end
    end,
    conditions = function()
        if #enemies < 5 then return true
        end
    end
}

wave[4] = {
    delay = 0,
    start = function()
        addwallshooter(140, true, 10, 0.4)
        addbasicenemy(128, 30, 0.5)
        addtargetingenemy(155, 60, 0.15)
        addbasicenemy(128, 90, 0.5)
    end,
    conditions = function()
        if #enemies < 2 then return true
        end
    end
}

wave[5] = {
    delay = 2,
    start = function()
        for i = 1, 12, 1 do
            addwallshooter(100 + (54-i)*i, (i%2==1), 10, 0.4)
        end
        addpickup(490, 60, "health")
    end,
    everysecond = function()
        if flr(currentwavetime%3) == 2 and currentwavetime < 16 then
            for i = 1, currentwavetime/4, 1 do
                addbasicenemy(128+rnd(20), rnd(100)+10, 0.6) 
            end
        end
    end,
    conditions = function()
        if #enemies < 2 and currentwavetime > 12 then return true
        end
    end
}

wave[6] = {
    delay = 2,
    start = function()
        addbasicenemy(240, 58, 1.1)
        addbasicenemy(240, 68, 0.9)
        addbasicenemy(240, 63, 1)
        addlasershooter(128, 64, 100, 0.4, true, true)
        
    end,
    everysecond = function()
        if rnd() < 0.1 and #enemies > 1 then
            for i = 1, rnd(2), 1 do
                addbasicenemy(128+rnd(20), rnd(20)+54, 0.6) 
            end
        end
    end,
    conditions = function()
        if #enemies < 1 then checkpoint = currentwave+1 return true
        end
    end,
    boss = true
}

wave[7] = {
    delay = 5,
    start = function()
        addballshooter(128, 56, 0.1)
        addballshooter(160, 14, 0.1)
        addballshooter(160, 100, 0.1)
    end,
}

wave[8] = {
    delay = 1,
    start = function()
        addballshooter(140, 56, 0.2)
        addwallshooter(120, true, 10, 0.3)
        addwallshooter(220, true, 10, 0.3)
        addbasicenemy(128, 30, 0.5)
        addbasicenemy(128, 110, 0.5)
        addbasicenemy(140, 30, 0.2)
        addbasicenemy(140, 110, 0.2)
    end,
}

wave[9] = {
    delay = 1,
    start = function()
        addtargetingenemy(128,1,0.1)
        addtargetingenemy(262,60,0.2)
        addwallshooter(138, true, 10, 0.4, 0)
        addwallshooter(144, true, 10, 0.4, 0)
        addwallshooter(185, false, 10, 0.4, 0)
        addwallshooter(230, true, 10, 0.4)
        addballshooter(230, 56, 0.2)
    end,
    conditions = function()
        if #enemies < 2 then return true
        end
    end
}

wave[10] = {
    delay = 3,
    start = function()
        for i = 1, 7, 1 do
            addtargetingenemy(128, i*16-4, 0.085)
            addtargetingenemy(144, i*16-4, 0.085)
        end
    end,
    conditions = function()
        if #enemies < 2 then return true
        end
    end
}

wave[11] = {
    delay = 1,
    start = function()
        for i = 1, 3, 1 do
            addwallshooter(128+i*65, true, 10, 0.4, 0, 0.68)
            addwallshooter(128+i*65, false, 10, 0.4, 0, 0.68)
        end
        addballshooter(200, 56, 0.2)
    end,
}

wave[12] = {
    delay = 2,
    start = function()
        addwallboss(128,4,15,225,0.05,true,false,true)
    end,
    everysecond = wave[6].everysecond,
    conditions = wave[6].conditions,
    boss = true
}

wave[13] = {
    delay = 5,
    start = function()
        addbasicenemy(130, 58, 0.6)
        addbasicenemy(130, 68, 0.5)
        addbasicenemy(130, 63, 0.7)
        addlasershooter(128, 2, 50, 0.1, false)
        addbomb(128,46, 0)
        addlasershooter(128, 94, 50, 0.1, false)
    end,
    everysecond = wave[6].everysecond,
}

wave[14] = {
    delay = 0,
    start = function()
        addbomb(140,46, 4)
        addtargetingenemy(140, 52, 0.2)
        addtargetingenemy(140, 68, 0.2)
        addballshooter(128, 14, 0.03)
        addballshooter(128, 100, 0.03)
    end,
}

wave[15] = {
    delay = 0,
    start = function()
        for i = 1, 6, 1 do
            addtargetingenemy(128, i*16-14+flr(i/4)*36, 0.05)
        end
        addbomb(140,46, 1)
    end
}

wave[16] = {
    delay = 0,
    start = function()
        addwallboss(128, 2, 7, 30, 0.05, false, 3, false)
        addwallboss(128, 70, 7, 30, 0.05, false, 3, false)
    end,
    everysecond = function ()
        if flr(currentwavetime%6) == 5 and currentwavetime < 20 then
            local y = 16
            if players[1].y > 64 then
                y = 80
            end
            addlasershooter(128, y, 50, 0.1, false)
        end
    end
}

wave[17] = {
    delay = 0,
    start = wave[5].start,
    everysecond = function()
        if currentwavetime%5 > 4 and currentwavetime < 20 then
            addbomb(128,20+currentwavetime*2,0)
        end
        if currentwavetime > 18 and not bossmusic then
            music(8, 0, 3)
            bossmusic = true
        end
        addbasicenemy(128,rnd(100)+14,0.4+rnd(0.4))
    end,
    conditions = function()
        if currentwavetime > 24 then return true
        end
    end
}

wave[18] = {
    delay = 0,
    start = function()
        killallenemies()
        addmissileboss(128, 0)
    end,
    everysecond = wave[6].everysecond,
    conditions = wave[6].conditions,
    boss = true
}

wave[19] = {
    delay = 7,
    start = function()
        canshootatx = 110
        addfinalboss()
    end,
    boss = true
}

--ending score screen
wave[20] = {
    delay = 3,
    start = function()
        if #players == 1 and highscore0 < currentscore then
            dset(0, currentscore) --set singleplayer score
        elseif #players > 1 and highscore1 < currentscore then
            dset(1, currentscore) --set multiplayer score
        end
    end,
    conditions = function()
    end
}

foreach(wave, function(wave) if not wave.conditions then wave.conditions = function() if #enemies < 1 then return true end end end end) --if there are no conditons for a wave, give them one. look at all those ends!!!!

function updatewaves()
    currentwavetime += ft
    everysecondtimer += ft
    if everysecondtimer >= 1 then
        everysecondtimer = 0
        if wave[currentwave].everysecond then
            wave[currentwave].everysecond()
        end
    end
    if wave[currentwave].conditions() then
        if wave[currentwave+1].boss and not bossmusic then
            bossmusic = true
            music(8,0,3)
        end
        delaytimer += ft
        if delaytimer > wave[min(currentwave+1, #wave)].delay then
            everysecondtimer = 0
            currentwave += 1
            if not wave[currentwave].boss and bossmusic then
                music(2,0,3)
                bossmusic = false
            end
            currentwavetime = 0
            delaytimer = 0
            -- currentwave = (currentwave - 1) % #wave+1 --temporarily looping the waves
            -- if currentwave < checkpoint then
            --     checkpoint = 1
            -- end
            wave[currentwave].start()
        end
    end
end

function setwave(num)
    everysecondtimer = 0
    currentwave = num
    currentwavetime = 0
    delaytimer = 0
    wave[currentwave].start()
    music(2, 0, 3)
end