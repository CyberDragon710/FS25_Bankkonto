BankManager = {}
BankManager_mt = Class(BankManager)

function BankManager.new()
    local self = setmetatable({}, BankManager_mt)

    self.giroBalance = 0
    self.savingsBalance = 0
    self.interestRate = 0.012

    return self
end

function BankManager:getGiroBalance()
    return self.giroBalance
end

function BankManager:getSavingsBalance()
    return self.savingsBalance
end

function BankManager:depositToSavings(amount)
    amount = math.floor(amount)

    if amount <= 0 then
        return false
    end

    self.savingsBalance = self.savingsBalance + amount

    Logging.info("[Bankkonto] Einzahlung Sparkonto: %d €", amount)

    return true
end

function BankManager:withdrawFromSavings(amount)
    amount = math.floor(amount)

    if amount <= 0 then
        return false
    end

    if amount > self.savingsBalance then
        return false
    end

    self.savingsBalance = self.savingsBalance - amount

    Logging.info("[Bankkonto] Auszahlung Sparkonto: %d €", amount)

    return true
end

function BankManager:addMonthlyInterest()
    local interest = math.floor(self.savingsBalance * self.interestRate + 0.5)

    if interest > 0 then
        self.savingsBalance = self.savingsBalance + interest

        Logging.info(
            "[Bankkonto] Monatszinsen: %d € (Kontostand: %d €)",
            interest,
            self.savingsBalance
        )
    end

    return interest
end
