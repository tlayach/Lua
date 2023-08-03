
function screenSize ()
    local screen = platform.window;

    local h = screen.height();
    local w = screen.width();
    
    return w, h;
end

function on.paint (gc)
    local w, h = screenSize();
 
    gc:drawString("screen: " .. w .. "x" .. h, 20, 20);
end
