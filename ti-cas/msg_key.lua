-- show msg only when key pressed
function on.paint (gc)
    if message then
        gc:setFont("sansserif", "r", 10);
        gc:drawString(message, 0, 0, "top");
        message = nil;
        timer.start(1);
    end
end

function on.timer ()
    timer.stop();
    platform.window:invalidate();
end

function on.charIn (ch)
    message = "Hello World !";
	platform.window:invalidate(); -- force display
end
