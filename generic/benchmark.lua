local iT = os.clock();
local fT = 0;

local s = 0;

for i = 1, 10000 do
  for j = 1, 10000 do
		s = s / i;
	end
end

fT = os.clock() - iT;

print(string.format("elapsed time: %.2f\n", fT));
