local W, H, fontSize;

function on.construction ()
    timer.start(0.4);
    TextBox1 = D2Editor.newRichText();
end

function on.resize ()
    W = platform.window:width();
    H = platform.window:height();
    
    TextBox1:move(W * 0.05, H * 0.1);
    TextBox1:resize(W * 0.9, H * 0.4);
    
    
    fontSize = math.floor(W / 60);
    fontSize = fontSize > 6 and fontSize or 7;
    
    TextBox1:setFontSize(fontSize);
    TextBox1:setBorderColor(500);
    TextBox1:setBorder(1);
    TextBox1:setTextColor(100 * 100 * 100);
    TextBox1:setFocus(true);
end

function on.getFocus ()
    TextBox1:setFocus();
end

function on.timer ()
    cursor.show();
    local Input = TextBox1:getExpression()
    
    if Input then
        var.store("input", Input);
    end
    
    platform.window:invalidate();
end

function on.escapeKey ()
    TextBox1:setExpression(" ");
    platform.window:invalidate();
end

function on.tabKey () -- sample
    local input = "\\1vector a + \\1tri a";
    TextBox1:setExpression(input);
    platform.window:invalidate();
end
