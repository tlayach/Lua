function gcd(m, n)
    -- greatest common divisor
    while m ~= 0 do
        m, n = math.mod(n, m), m;
    end

    return n;
end

print(gcd(3, 5));
print(gcd(24, 36));
print(gcd(56, 63));
print(gcd(105, 70));

-- 3, 5: 1
-- 24, 36: 12
-- 56, 63: 7
-- 105, 70: 35
