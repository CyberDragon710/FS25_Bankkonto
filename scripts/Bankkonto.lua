Bankkonto = {}
local Bankkonto_mt = Class(Bankkonto)

function Bankkonto.new()
    local self = setmetatable({}, Bankkonto_mt)

    self.bankManager = BankManager.new()

    return self
end

function Bankkonto:loadMap(mapNode, mapFilename)
    Logging.info("[FS25_Bankkonto] Mod geladen")
end

function Bankkonto:update(dt)
    -- Wird später für Monatszinsen verwendet
end

function Bankkonto:deleteMap()
    Logging.info("[FS25_Bankkonto] Mod beendet")
end

g_bankkonto = Bankkonto.new()
addModEventListener(g_bankkonto)
