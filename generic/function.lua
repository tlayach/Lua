function demo(n)
    n = math.sqrt(n) + 1;
    return n;
end

io.write("result = ", demo(10), "\n");
-- result = 4.1622776601684


function returnArgs(a, b, c)
    return a * 2, b * 2, c * 2;
end


local a, b, c = returnArgs(4, 8, 16);
print(a .. ", " .. b .. ", " .. c); -- 8, 16, 32


-- function than create functions
function mainFoo (n)
    return function (x)
        return x * n;
    end
end

local myFoo = mainFoo(10);
print(myFoo(12)); -- 120
