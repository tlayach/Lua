function fibonacci(limit)
    -- Fibonacci sequence
    local a, b = 0, 1;
    local fibseq = {};

    table.insert(fibseq, 0);
    table.insert(fibseq, 1);

    for i = 1, limit - 2 do
        a, b = b, a + b;
        table.insert(fibseq, b);
    end

    return fibseq;
end

local fibseq = fibonacci(21);
local count = 0;

for _, v in pairs(fibseq) do
    print("F" .. tostring(count) .. ": " .. tostring(v));
    count = count + 1;
end
