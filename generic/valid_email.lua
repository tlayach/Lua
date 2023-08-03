function validEmail (email)
    if (email:match("[A-Za-z0-9%.%%%+%-]+@[A-Za-z0-9%.%%%+%-]+%.%w%w%w?%w?")) then
        return true;
    end

    return false;
end


local email = "name@server.com";
if validEmail(email) then
    print("valid email");
else
    print("invalid email");
end
