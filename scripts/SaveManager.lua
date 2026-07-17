SaveManager = {}

function SaveManager:save(bankManager)

    print("[FS25_Bankkonto] Speichern...")

    print("[FS25_Bankkonto] Giro: " .. bankManager.giro)
    print("[FS25_Bankkonto] Spar: " .. bankManager.spar)

end

function SaveManager:load(bankManager)

    print("[FS25_Bankkonto] Laden...")

end