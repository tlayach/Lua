
local fileName = "sap.txt";
local fileName2 = "sap_copy";


-- rename file
os.rename(fileName, fileName2);


-- remove file
os.remove(fileName2);



-- check if file exists
function fileExists (fileName)
    local file = io.open(fileName, "rb");

    if file then
        file:close();
    end

    return file ~= nil;
end

print(fileExists(fileName));


-- read file
function readFile (fileName)
    local file = io.open(fileName, "r");

    if file then
        local allContent = file:read("*all");
        print(allContent);
        file:close();
    end
end

readFile(fileName);
