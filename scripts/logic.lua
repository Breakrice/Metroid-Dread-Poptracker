-- "access_rules": []
function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
        return count > 0
    else
        return count >= amount
    end
end

function compareCounts(item1, item2)
    local count1 = Tracker:ProviderCountForCode(item1)
    local count2 = Tracker:ProviderCountForCode(item2)
    return count1 >= count2
end

function surviveDMG(amount)
    local etank = Tracker:ProviderCountForCode("CONetank")
    local epart = Tracker:ProviderCountForCode("CONetank part")
    local tankhealth = etank * 99
    local parthealth = (epart * 25) - 1
    local health = 99 + tankhealth + parthealth
    return health > amount 
end

function DOORRANDOOFF()
    return not has("doorlockrando")
end

function CANBLOWUP()
    return has("morph") and (has("bomb") or has("powerbomb"))
end