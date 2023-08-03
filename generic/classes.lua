Account = {};
Account.__index = Account;

function Account.create (balance, amount)
    local acnt = {};                -- our new object
    setmetatable(acnt, Account);    -- make Account handle lookup
    
    acnt.balance = balance;         -- initialize our object
    acnt.other = amount;

    return acnt;
end

function Account:withdraw (amount)
    self.balance = self.balance - amount;
end

function Account:amount (totalAmount)
    self.other = totalAmount;
end

-- create and use an Account
acc = Account.create(1000, 100);

acc:withdraw(100);
acc:amount(85);

print(acc.balance); -- 900
print(acc.other); -- 85
