function reverseDigits(num)
    -- reverese digits: 901 to 109
    snum = tostring(num);
    snum = string.reverse(snum);
    num = tonumber(snum);

    return num;
end

print(reverseDigits(901));
-- 901: 109
