-- current os date
print(os.date());


-- current os date formated
print(os.date("%Y-%m-%d"));


-- diff time
local ts = os.time();
print(os.difftime(os.time(), t1));


-- cpu time since lua started (seconds)
print(os.clock());
