require "physics"

timer.start(0.01);

local W, H, space, newBody;

function on.resize ()
    W = platform.window:width();
    H = platform.window:height();
    space = physics.Space();
    
    newBody = physics.Body(100, 0);
    newBody:setVel(physics.Vect(1000, 1000));
    space:addBody(newBody);
end

function on.paint (gc)
    local width = W / 20;
    
    local vel = newBody:vel();
    local velX = vel:x();
    local velY = vel:y();

    local pos = newBody:pos();
    local posX = pos:x();
    local posY = pos:y();
    
    if posX > W then
        velX = -1 * math.abs(velX);
        posX = W;
    elseif posX < 0 then
        velX = math.abs(velX);
        posX = 0;
    end

    if posY > H then
        velY = -1 * math.abs(velY);
        posY = H;
    elseif posY < 0 then
        velY = math.abs(velY);
        posY = 0;
    end

    
    newBody:setPos(physics.Vect(posX, posY));
    newBody:setVel(physics.Vect(velX, velY));
    
    gc:setColorRGB(0, 0, 255);
    gc:fillArc(posX, posY, width, width, 0, 360);
end

function on.timer ()
    space:step(0.01);
    platform.window:invalidate();
end
