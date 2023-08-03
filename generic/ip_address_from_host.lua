require("socket.http");

function GetHostName()
    local b = socket.dns.gethostname();
    return b;
end

function ToHostName(ipAddress)
    local b, c = socket.dns.tohostname(ipAddress);
    return b;
end

function ToIp(url)
    local b, c = socket.dns.toip(url);
    return b;
end

print(GetHostName());
print(ToHostName("localhost"));
print(ToIp("www.apple.com"));
print(ToHostName("173.194.34.228"));
-- <<local network machine name>>
-- <<local network machine name>>
-- ip address
-- server name
