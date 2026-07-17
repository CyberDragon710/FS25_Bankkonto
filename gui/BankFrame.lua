BankFrame = {}
BankFrame_mt = Class(BankFrame)

function BankFrame.new()
    local self = {}
    setmetatable(self, BankFrame_mt)

    return self
end

function BankFrame:show()
    print("[FS25_Bankkonto] Bankfenster geöffnet")
end

function BankFrame:close()
    print("[FS25_Bankkonto] Bankfenster geschlossen")
end

print("[FS25_Bankkonto] BankFrame.lua geladen")