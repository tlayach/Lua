-- namespace
mime = require("mime");

rdbmsg = "hello world";
b64msg = mime.b64(rdbmsg);
print("base 64: " .. b64msg);

rdbmsg = mime.unb64(b64msg);
print("decoded: " .. rdbmsg);
-- base 64: aGVsbG8gd29ybGQ=
-- decoded: hello world
