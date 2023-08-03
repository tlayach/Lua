-- trans sap: fbl3n
-- layou: <<adriana>>
-- export: gravar: file local: não convert: sap_file.txt

function readSAP (iFileName, oFileName)
  -- opens sap file and converts to csv
	local ifp = assert(io.open(iFileName, "r"));
	local ofp = assert(io.open(oFileName, "w"));

	if ifp ~= nil and ofp ~= nil then
		local line;
		local value;
		local colNum;

		-- title
		ofp:write("Ano/Mês;Referência;Ti;N doc;CI;Empr;Conta;Div;Data doc;Data lanc;Montante;CL;CC;Moeda;Atribuição;Doc compra;Usuário;SocPar;Comentário;Doc Compens;Compensação\n");

		for line in ifp:lines() do
			local row = {};
			colNum = 0;

			if string.len(line) > 0 then
				if string.sub(line, 0, 5) == "|    " and string.sub(line, 51, 54) ~= "Empr" then

					for value in line:gmatch("[^|]+") do
						value = cleanRow(value, colNum);
						value = string.format("%s;", value);

						ofp:write(value);
						colNum = colNum + 1;
					end

					ofp:write("\n");
				end
			end
		end

		--ofp:flush();

		ofp:close();
		ifp:close();
	end
end


function cleanRow (value, colNum)
	-- cleans the values
	value = value:gsub("^%s*(.-)%s*$", "%1"); -- trim whitespaces

	value = value:gsub("%;", ""); -- replace ;
	value = value:gsub("%\"", ""); -- replace \"

	if colNum == 8 or colNum == 9 then -- replace dates: . -> -
		value = value:gsub("%.", "-");
	end

	if colNum == 10 then -- value 60.00- -> -60,00
		value = value:gsub("%,", "");
		value = value:gsub("%.", ",");

		i, j = string.find(value, "-");
		if i ~= nil then
			value = value:gsub("%-", "");
			value = "-" .. value;
		end
	end

	if colNum == 12 then -- CC avoid excel 124E674...
		if string.len(value) > 0 then
			value = "\'" .. value;
		end
	end

	return value;
end


-- main call
readSAP("sap_file.txt", "output.csv");
