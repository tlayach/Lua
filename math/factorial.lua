function factorial (n)
    -- the factorial of a non-negative
    -- integer n, denoted by n!, is the
    -- product of all positive integers
    -- less than or equal to n
    f = 1
    
    while n > 0 do
        f = f * n;
        n = n - 1;
    end
    
    return f;
end

print(factorial(5));
-- 5: 120
