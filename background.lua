-- bgcircles = {}

function scrollingcircles(y, speed, spacing, radius, color)
    for i = 1, 256, spacing do
        circfill((i-(gt*speed))%256-radius*2, y, radius, color)
    end
end

function scrollingcirclelines(y, speed, spacing, radius, color)
    for i = 1, 256, spacing do
        circ((i-(gt*speed))%256-radius*2, y, radius, color)
    end
end

function scrollingsprite(sprite,x,y,w,h,speed,flip)
    flip = flip or false
    spr(sprite, (-gt*speed+x+w*8)%(128+w*8)-w*8, y, w, h, flip)
end


--ringed planet
function bgplanetmegasprite(x,y)
    --default values
    --x = 160-gt
    --y = 50

    palt(0,false)
    palt(13,true)
        spr(194,x+10,y+0,7,2)
        spr(201,x+10,y+16,7,2)
        spr(234,x+2,y+32,6,2)
    palt()
end


function drawbg()
    cls(0)
    camera((sin(shake+t())*shake)/3, (sin(shake+gt/2.1)*shake)/3)

    --stars
    for i = 1, 64, 1 do
        pset((((-gt*0.1)+i*4.3824)*(i/32))%128, sin(i*0.536382)*64+64, 4) --funny random star algorithm!!
    end

    --galaxies
    spr(120, 20, 30, 1, 1)
    spr(104, 108, 40, 1, 1)
    spr(104, 42, 74, 1, 1, true, true)

    --ringed planet
    bgplanetmegasprite(150-(gt)%300,50)
    
    --clouds
    scrollingcircles(-9, 24, 22, 22, 2)
    --small clouds
    scrollingsprite(88, 60, 10, 1, 1, 28)
    scrollingsprite(88, 120, 10, 1, 1, 28)
    scrollingsprite(88, 130, 12, 1, 1, 29)
    scrollingsprite(88, 160, 15, 1, 1, 30)
    scrollingsprite(72, 145, 15, 1, 1, 30)
    scrollingsprite(72, 20, 10, 1, 1, 28)
    scrollingsprite(72, 100, 10, 1, 1, 28)
    scrollingsprite(72, 170, 15, 1, 1, 30)
    --large clouds
    scrollingsprite(248, 40, 5, 2, 1, 35)
    scrollingsprite(248, 80, 5, 2, 1, 35)
    scrollingsprite(248, 180, 9, 2, 1, 38)
    scrollingsprite(248, 260, 9, 2, 1, 38)
    scrollingsprite(232, 120, 7, 2, 1, 36)
    scrollingsprite(232, 160, 7, 2, 1, 36)
    scrollingsprite(232, 240, 9, 2, 1, 38)
    --fg clouds
    scrollingcirclelines(-11, 40, 25, 20, 2)
    scrollingcircles(-12, 40, 25, 20, 4)


    camera((sin(shake+t())*shake)/2, (sin(shake+gt/2.1)*shake)/2)

    --landscape
    scrollingcirclelines(125, 72, 25, 20, 8)
    scrollingcircles(126, 72, 25, 20, 2)

    --landscape lines
    rectfill(0,112,128,128,8)
    line(0, 113, 128, 113, 2)
    line(0, 116, 128, 116, 2)
    line(0, 119, 128, 119, 2)

    for i = 1, 32, 1 do
        line(((-gt+i*2.5)*80)%128, 111, ((-gt+i*2.5)*80)%128*1.2-12.8, 125, 2)
    end

    --pine trees
    local treex = {10,30,20,50,62,70,80,95,100,120}
    for i = 1, 10, 1 do
        scrollingsprite(231,treex[i],94+sin(i/5.2323),1,2,72,(i%2==0))
    end
    -- scrollingsprite(231,10,94,1,2,72,true)
    -- scrollingsprite(231,30,94,1,2,72)
    -- scrollingsprite(231,20,93,1,2,72,true)
    -- scrollingsprite(231,50,95,1,2,72,true)
    -- scrollingsprite(231,62,93,1,2,72,true)
    -- scrollingsprite(231,70,94,1,2,72)
    -- scrollingsprite(231,80,95,1,2,72)
    -- scrollingsprite(231,95,94,1,2,72)
    -- scrollingsprite(231,100,93,1,2,72)
    -- scrollingsprite(231,120,95,1,2,72,true)
    --small buildings
    scrollingsprite(226,15,98,2,2,80)
    scrollingsprite(226,65,97,2,2,80)
    scrollingsprite(226,95,96,2,2,80)
    scrollingsprite(226,115,97,2,2,80)
    --totem poles
    scrollingsprite(230,25,99,1,2,84)
    scrollingsprite(230,65,100,1,2,84,true)
    scrollingsprite(230,85,101,1,2,84)
    --dead trees
    scrollingsprite(228,30,104,2,2,84)
    scrollingsprite(228,75,105,2,2,84,true)
    scrollingsprite(228,100,104,2,2,84)
    scrollingsprite(228,120,105,2,2,84,true)
    --large buildings (front)
    scrollingsprite(192,52,94,2,4,90)
    scrollingsprite(192,22,91,2,4,90)
    scrollingsprite(192,102,90,2,4,90)
    scrollingsprite(192,137,92,2,4,90)

    camera(sin(shake+t())*shake, sin(shake+gt/2.1)*shake)

    scrollingcirclelines(150, 100, 30, 32, 8)
    scrollingcircles(151, 100, 30, 32, 2)
end