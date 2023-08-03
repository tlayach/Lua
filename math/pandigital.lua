function isPandigital(num)
    -- pandigital
    numSize = string.len(num)
    result = true
    
    if num > 10 then
        auxi = {}
        
        for i = 1, numSize do
            table.insert(auxi, tonumber(string.sub(num, i, i)))
        end
        
        table.sort(auxi)
        
        for i = 1, numSize do
            if auxi[i] == auxi[i + 1] or auxi[i] ~= i then
                result = false
                break
            end
        end
    end
    
    return result
end

print(isPandigital(198))
print(isPandigital(113))
print(isPandigital(132))
-- 198: false
-- 113: false
-- 132: true
