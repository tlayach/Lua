function demo ()
    -- important: "i" only exists
    -- inside the "for" statement
    local sum = 0
    
    for i = 0, 10, 1 do
        sum = sum + i;
    end
    
    return sum;
end

print(demo());
-- result: 55


function iter ()
    local a = {"one", "two", "three"};
    
    for i, v in ipairs(a) do
        print(i, v);
    end
end

iter();
-- 1 one; 2 two; 3 three
