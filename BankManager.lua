BankManager = {}
BankManager_mt = Class(BankManager)

function BankManager.new(customMt)
    local self = setmetatable({}, customMt or BankManager_mt)

    self.balance = 0
    self.interestRate = 0.012

    return self
end

function BankManager:getBalance()
    return self.balance
end

function BankManager:deposit(amount)
    amount = math.floor(tonumber(amount) or 0)

    if amount <= 0 then
        return false
    end

    self.balance = self.balance + amount
    return true
end

function BankManager:withdraw(amount)
    amount = math.floor(tonumber(amount) or 0)

    if amount <= 0 or amount > self.balance then
        return false
    end

    self.balance = self.balance - amount
    return true
end

function BankManager:addMonthlyInterest()
    local interest = math.floor(self.balance * self.interestRate + 0.5)

    if interest > 0 then
        self.balance = self.balance + interest
    end

    return interest
end