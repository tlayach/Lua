function demo(m, n)
    n = m * n;
    return n;
end

io.write("insert a value: ");
a = io.read("*number");

io.write("insert b value: ");
b = io.read("*number");

print(demo(a, b));
