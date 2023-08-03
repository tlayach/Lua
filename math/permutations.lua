function Output(ttable)
    -- output values
    local sout = "";
    
    for _, v in ipairs(ttable) do
        sout = sout .. v;
    end
    
    print(sout);
end

function Permutation(ttable, n)
    -- permutations
    if n == 0 then
        Output(ttable)
    else
        for i = 1, n do
            -- put i-th element as the last one
            ttable[n], ttable[i] = ttable[i], ttable[n]
            
            -- generate all permutations of the other elements
            Permutation(ttable, n - 1)
            
            -- restore i-th element
            ttable[n], ttable[i] = ttable[i], ttable[n]
        end
    end
end

Permutation({1, 3, 7}, 3)
-- 371, 731, 713, 173, 317, 137
