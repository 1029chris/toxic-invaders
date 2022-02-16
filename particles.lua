shake = 0
function addcircle(x, y, velx, vely, r, time, color, grav)
    local circle = {
        x = x,
        y = y,
        velx = velx,
        vely = vely,
        r = r,
        time = time,
        t = time,
        col = color,
        grav = grav or 0
    }

    function circle.draw(circle)
        circfill(circle.x, circle.y, circle.r*sin(circle.time/circle.t), circle.col)
    end

    function circle.update(circle)
        circle.x += circle.velx
        circle.vely -= circle.grav
        circle.y += circle.vely
        circle.time -= ft
        if circle.time < 0 then
            del(obj, circle)
        end
    end

    add(obj, circle)
end

function explosion(x,y, w, h)
    w = w or 8
    h = h or 8
    for i = 1, w/2, 1 do
        addcircle(x+rnd(w), y+rnd(h), -0.5, 0, rnd(8), rnd(1.5)+1, 5)
    end
    for i = 1, w/2, 1 do
        addcircle(x+rnd(w), y+rnd(h), -0.4, 0, rnd(8), rnd(1)+0.5, 9)
    end
end

function damagesmoke(object)
    --smokes when damaged!
    addcircle(object.x+rnd(object.w*0.5), object.y+rnd(object.w*0.5), -0.5, -0.2, rnd(6), rnd(1.5)+1, 5)
    if ceil(rnd(2)) == 1 then
        addcircle(object.x+rnd(object.w*0.5), object.y+rnd(object.w*0.5), -0.4, -0.2, rnd(6), rnd(1)+0.5, 9)
    end
end