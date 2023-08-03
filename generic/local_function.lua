LibA = {
    foo = function (x, y) return x + y end,
    goo = function (x, y) return x - y end
}

print(LibA.foo(10, 2)); -- 12
print(LibA.goo(10, 2)); -- 8


-- or

LibB = {}
function LibB.foo (x, y)
    return x + y;
end

function LibB.goo (x, y)
    return x - y;
end

print(LibB.foo(10, 2)); -- 12
print(LibB.goo(10, 2)); -- 8


-- other

local foo = function (n)
    return n * n;
end

print(foo(2));

-- when using recursion
local fact;
fact = function (n)
    if (n == 0) then
        return 1;
    else
        return n * fact(n - 1);
    end
end

print(fact(10)); -- 3628800


local function fact2 (n)
    if (n == 0) then
        return 1;
    else
        return n * fact2(n - 1);
    end
end

print(fact2(10)) -- 3628800
