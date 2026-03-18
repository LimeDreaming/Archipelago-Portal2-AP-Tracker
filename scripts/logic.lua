-- logic.lua

function has_more_then_n_consumable(n)
    local count = Tracker:ProviderCountForCode('consumable')
    local val = (count > tonumber(n))
    if ENABLE_DEBUG_LOG then
        print(string.format(
            "called has_more_then_n_consumable: count: %s, n: %s, val: %s",
            count, n, val
        ))
    end
    return val and 1 or 0
end

function canSolve(ids)
    if Tracker:ProviderCountForCode("Symbols") == 0 then
        return true
    end
    ids = parseIds(ids)
    for id in ids:gmatch("%S+") do
        local requiredSymbols = panel[tonumber(id)]
        for _, v in pairs(requiredSymbols) do
            if not hasSymbol(v) then
                return false
            end
        end
    end
    return true
end