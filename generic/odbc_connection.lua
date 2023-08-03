-- load driver
require "luasql.odbc";

-- parameters
local odbcName = "odbc_name";
local odbcLogin = "login";
local odbcPwd = "password";

local query = [[SELECT ALL STORE, STORE_NAME FROM MY_TABLE]];

-- create enviromnent object
env = assert(luasql.odbc());

-- connect to data source
con = assert(env:connect(odbcName, odbcLogin, odbcPwd));

-- retrieve
cur = assert(con:execute(query));

-- output
row = cur:fetch({}, "a");

while row do
    print(row["STORE"] .. ", " .. row["STORE_NAME"]);
    row = cur:fetch(row, "a");
end

-- close
cur:close();
con:close();
env:close();
