BankFrame = {}
BankFrame_mt = Class(BankFrame)

function BankFrame.new()
    local self = setmetatable({}, BankFrame_mt)

    print("[FS25_Bankkonto] BankFrame erstellt")

    return self
end

function BankFrame:show()
    print("[FS25_Bankkonto] Bankfenster geöffnet")
end

function BankFrame:close()
    print("[FS25_Bankkonto] Bankfenster geschlossen")
end