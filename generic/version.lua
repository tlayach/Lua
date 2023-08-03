print("lua version:", _VERSION)

io.write("lua version: ", _VERSION)


-- get windows version
function getWinVer ()
    local pipe = io.popen("ver");
	local version = pipe:read("*a");
	pipe:close();

	return version;
end

print(getWinVer());


-- get os using env variables
function getOS ()
	local osInfo = os.getenv("OS");

	return osInfo;
end

print(getOS());

