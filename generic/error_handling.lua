local result = tonumber("err");

-- not
if not result then
    print("could not convert to number");
end

-- assert
-- assert(result, "invalid conversion"); -- the code stops here

-- types
local str = 123;

if type(str) ~= "string" then
    error("string expected");
end
