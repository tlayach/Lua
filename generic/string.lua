-- sample string
mstring = "hello world";

-- length
print(string.len(mstring)); -- 11

-- sub string
print(string.sub(mstring, 7, 8)); -- el

-- upper
print(string.upper(mstring)); -- HELLO WORLD

-- lower
print(string.lower(mstring)); -- hello world

-- format
print(string.format("out: %s", mstring)); -- out: hello world

-- concat
print("hel" .. "lo"); -- hello

-- find
i, j = string.find(mstring, "hello");
print(i, j); -- 1 5

print(string.find(mstring, "hello")); -- 1 5

-- find digits
i, j = string.find("the number 1298 is even", "%d+")
print(i, j) -- 12  15

-- char
print(string.char(97)); -- a

-- byte
print(string.byte("a")); -- 97

-- trim whitespaces
mstring = "  hello world  ";
mstring = mstring:gsub("^%s*(.-)%s*$", "%1");
print(mstring);
