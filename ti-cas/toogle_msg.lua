-- toggle animation when key pressed
local x = 1;
local animating = false;

function on.paint (gc)
    gc:setFont("sansserif", "r", 10)
    gc:drawString(tostring(x), 40, 40, "top")
    
    if animating then
        x = x + 1;
        timer.start(0.5);
    end
end

function on.charIn(ch)
    animating = not animating; -- switch state
    platform.window:invalidate(); -- recall graph engine
end

function on.timer()
    timer.stop();
    platform.window:invalidate(); -- recall graph engine
end
