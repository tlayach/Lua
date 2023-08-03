function gcd(m, n)
    -- greatest common divisor
    while m ~= 0 do
        m, n = math.mod(n, m), m
    end
    
    return n
end

function lcm(m, n)
    -- least common multiple
    return (m ~= 0 and n ~= 0) and m * n / gcd(m, n) or 0
end

print(lcm(3, 5))
print(lcm(24, 36))
print(lcm(56, 63))
print(lcm(105, 49))

-- 3, 5: 15
-- 24, 36: 72
-- 56, 63: 504
-- 105, 49: 735
