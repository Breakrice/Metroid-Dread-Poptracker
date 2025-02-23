function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
        return count > 0
    else
        return count == amount
    end
end
function DESTROYBOMBBLOCKS()
    return
    has("morph") and (has("bomb") or has("crossbomb") or has("powerbomb"))