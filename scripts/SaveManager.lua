SaveManager = {}
SaveManager_mt = Class(SaveManager)

function SaveManager.new()
    local self = setmetatable({}, SaveManager_mt)
    return self
end

function SaveManager:save(bankManager)
    print("[FS25_Bankkonto] Speichern")
    print("Giro: " .. bankManager:getGiro())
    print("Sparkonto: " .. bankManager:getSparkonto())
end

function SaveManager:load(bankManager)
    print("[FS25_Bankkonto] Laden")
end

-- Speichern in die Savegame-XML
function SaveManager:saveToXML(xmlFile, key, bankManager)
    setXMLFloat(xmlFile, key .. "#giro", bankManager:getGiro())
    setXMLFloat(xmlFile, key .. "#sparkonto", bankManager:getSparkonto())

    print("[FS25_Bankkonto] Kontostände gespeichert")
end

-- Laden aus der Savegame-XML
function SaveManager:loadFromXML(xmlFile, key, bankManager)
    local giro = getXMLFloat(xmlFile, key .. "#giro") or 100000
    local sparkonto = getXMLFloat(xmlFile, key .. "#sparkonto") or 0

    bankManager:setGiro(giro)
    bankManager:setSparkonto(sparkonto)

    print("[FS25_Bankkonto] Kontostände geladen")
end