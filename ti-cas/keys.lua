local vari = "hello";

function on.arrowKey (key)
    vari = key;
end

function on.mouseDown (x, y)
    vari = "mouse down";
end

function on.charIn (ch)
    if ch == "8" then
        on.construction();
    else
        vari = ch;
    end
end

function on.enterKey ()
    vari = "enter";
end

function on.escapeKey()
    vari = "escape key";
    --platform.window:invalidate();
end

function on.construction ()
    vari = "xpto";
end

function on.paint (gc)
    gc:drawString(vari, 20, 40);
    gc:drawRect(390, 300, 50, 50)
    
    if vari == "enter" then
        gc:setColorRGB(255, 255, 0);
        gc:drawLine(109, 95, 209, 95);
    end
end
