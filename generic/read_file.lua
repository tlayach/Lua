function readFileA (fileName)
    -- read file
    local mode = "r";
    local file = io.open(fileName, mode);
    
    if (file ~= nil) then
        for line in file:lines() do
            print(line);
        end
        
        file:close();
    else
        print("file not found");
    end
end

function readFileB (fileName)
    -- read file
    local mode = "r";
    local file = assert(io.open(fileName, mode));
    local content = file:read("*all");
    file:close();
    print(content);
end

readFileA("example.txt")
readFileB("example.txt")
