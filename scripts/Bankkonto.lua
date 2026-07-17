Bankkonto = {}
Bankkonto_mt = Class(Bankkonto)

function Bankkonto.new()
    local self = setmetatable({}, Bankkonto_mt)

    self.bankManager = BankManager.new()
    self.saveManager = SaveManager.new()
    self.bankFrame = BankFrame.new()

    print("[FS25_Bankkonto] Bankkonto initialisiert")

    return self
end

function Bankkonto:loadMap(mapNode)
    print("[FS25_Bankkonto] Mod geladen")

    self.bankFrame:show()
end

function Bankkonto:update(dt)
    -- Hier kommt später die Logik hinein.
end

function Bankkonto:deleteMap()
    self.saveManager:save(self.bankManager)

    print("[FS25_Bankkonto] Mod beendet")
end

g_bankkonto = Bankkonto.new()
addModEventListener(g_bankkonto)