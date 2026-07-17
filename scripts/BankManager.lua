BankManager = {}

function BankManager:loadMap(mapNode)

    self.giro = 100000
    self.spar = 0

    print("===================================")
    print("[FS25_Bankkonto] BankManager gestartet")
    print("[FS25_Bankkonto] Girokonto: " .. self.giro .. " €")
    print("[FS25_Bankkonto] Sparkonto: " .. self.spar .. " €")
    print("===================================")

end

function BankManager:deleteMap()

    print("[FS25_Bankkonto] BankManager beendet")

end

function BankManager:getGiro()
    return self.giro
end

function BankManager:getSparkonto()
    return self.spar
end

function BankManager:addGeld(betrag)
    self.giro = self.giro + betrag
    print("[FS25_Bankkonto] +" .. betrag .. " €")
end

function BankManager:abheben(betrag)
    if self.giro >= betrag then
        self.giro = self.giro - betrag
        print("[FS25_Bankkonto] -" .. betrag .. " €")
    else
        print("[FS25_Bankkonto] Nicht genügend Guthaben!")
    end
end

addModEventListener(BankManager)