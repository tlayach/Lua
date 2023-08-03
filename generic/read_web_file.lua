-- namespace
local http = require("socket.http");

local webFile = "http://www.../my_file.csv";
-- b: file content, c: status
local b, c, h = http.request(webFile);

-- 200: ok
if c == 200 then
    print(b);
else
    print("http error: " .. c);
end
