Bankkonto = {}
Bankkonto_mt = Class(Bankkonto)

function Bankkonto.new()
    local self = setmetatable({}, Bankkonto_mt)

    self.bank = BankManager.new()

    Logging.info("[FS25_Bankkonto] Mod gestartet")

    return self
end

function Bankkonto:loadMap(mapName)
    Logging.info("[FS25_Bankkonto] Karte geladen")
end

function Bankkonto:update(dt)
    -- spätere Monatsprüfung
end

function Bankkonto:deleteMap()
    Logging.info("[FS25_Bankkonto] Mod beendet")
end

g_bankkonto = Bankkonto.new()
addModEventListener(g_bankkonto)