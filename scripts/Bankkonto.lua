Bankkonto = {}
Bankkonto_mt = Class(Bankkonto)

function Bankkonto.new()
    local self = setmetatable({}, Bankkonto_mt)

    print("[FS25_Bankkonto] Bankkonto.lua geladen")

    return self
end

function Bankkonto:loadMap(mapNode)
    print("[FS25_Bankkonto] Mod geladen")
end

function Bankkonto:update(dt)
    -- Wird später für Monatszinsen verwendet
end

function Bankkonto:deleteMap()
    print("[FS25_Bankkonto] Mod beendet")
end

g_bankkonto = Bankkonto.new()
addModEventListener(g_bankkonto)anager, BankFrame und SaveManager)
