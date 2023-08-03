function isPrime(num)
    -- verifies if number is prime
    if num == 1 then
        return false
    elseif num == 2 then
        return true
    elseif num == 5 then
        return true
    elseif num % 2 == 0 then
        return false
    elseif num % 5 == 0 then
        return false
    else
        for i = math.ceil(math.sqrt(num)), 2, -1 do
            if num % i == 0 then
                return false
            end
        end
    end
    
    return true
end

print(isPrime(198))
print(isPrime(113))
print(isPrime(115))
-- 198: false
-- 113: true
-- 115: false


function isPrime2(n)
    -- verifies if number is prime
    if n == 1 then
        return false
    elseif n == 2 then
        return true
    elseif n % 2 == 0 then
        return false
    else
        for i = math.ceil(math.sqrt(n)), 2, -1 do
            if n % i == 0 then
                return false
            end
        end
    end
    
    return true
end

print(isPrime2(50))
print(isPrime2(997))

-- 50: false
-- 997: true


function is_prime3(n)
    -- check the number is prime
    isPrime = true
    for i = 2, math.sqrt(n) do
        if n % i == 0 then
            isPrime = false
            break
        end
    end
    
    return isPrime
end

print(is_prime3(50))
print(is_prime3(997))

-- 50: false
-- 997: true
