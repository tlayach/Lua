-- sample table
xtable = {1, 2, 120, 4}

-- third element
print(xtable[3]) -- 120

-- insert into table
table.insert(xtable, 21)
print(xtable[5]) -- 21

-- as dictionary
xtable = {["apple"]="green", ["orange"]="orange", ["banana"]="yellow"}
print(xtable["apple"])

-- change value
xtable["apple"] = "red"
print(xtable["apple"])

-- print dictionary
for k, v in pairs(xtable) do
    print(k, v)
end