local curDir = os.getenv("HOME");
print(curDir);


local userName = os.getenv("USERNAME");
print(userName);


local processorArch = os.getenv("PROCESSOR_ARCHITECTURE");
print(processorArch);


local userProfile = os.getenv("USERPROFILE");
print(userProfile);


local cmdPath = os.getenv("COMSPEC"); -- cmd.exe
print(cmdPath);


local osInfo = os.getenv("OS");
print(osInfo);

local paths = os.getenv("PATH");
print(paths);
