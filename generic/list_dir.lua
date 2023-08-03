require "lfs"

local dirPath = "C:\\Documents and Settings\\psportela\\Desktop\\balances";
local filePath;
local fileName;

for fileName in lfs.dir(dirPath) do
	if fileName ~= "." and fileName ~= ".." then
		filePath = dirPath .. "\\" .. fileName;

		if lfs.attributes(filePath).mode == "file" then
			-- file
			fileSize = lfs.attributes(filePath).size;
			print(fileName .. ", " .. (fileSize / 1000) .. "kB");
		else
			-- directory
			print(fileName);
		end;
	end
end
