local FGuid = {}

---@param guid FGuid
---@return FGuid
function FGuid.translate(guid)
    local self = {}
    self.A = guid and guid.A or 0
    self.B = guid and guid.B or 0
    self.C = guid and guid.C or 0
    self.D = guid and guid.D or 0
    return self
end

---@param guid FGuid
---@return string
function FGuid.tostring(guid)
    return string.format(
        "%08X-%08X-%08X-%08X",
        (guid.A or 0) % 0x100000000,
        (guid.B or 0) % 0x100000000,
        (guid.C or 0) % 0x100000000,
        (guid.D or 0) % 0x100000000
    )
end

return FGuid
