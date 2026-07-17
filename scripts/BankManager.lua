BankManager = {}
BankManager_mt = Class(BankManager)

function BankManager.new()
    local self = setmetatable({}, BankManager_mt)

    self.giro = 100000
    self.sparkonto = 0

    print("[FS25_Bankkonto] BankManager erstellt")

    return self
end

function BankManager:getGiro()
    return self.giro
end

function BankManager:getSparkonto()
    return self.sparkonto
end

function BankManager:setGiro(betrag)
    self.giro = betrag
end

function BankManager:setSparkonto(betrag)
    self.sparkonto = betrag
end

function BankManager:addGeld(betrag)
    self.giro = self.giro + betrag
    print("[FS25_Bankkonto] +" .. betrag .. " €")
end

function BankManager:abheben(betrag)
    if self.giro >= betrag then
        self.giro = self.giro - betrag
        print("[FS25_Bankkonto] -" .. betrag .. " €")
        return true
    end

    print("[FS25_Bankkonto] Nicht genügend Guthaben!")
    return false
end