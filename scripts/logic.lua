-- "access_rules": []
function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
        return count > 0
    else
        return count == amount
    end
end

function compareCounts(item1, item2)
    local count1 = Tracker:ProviderCountForCode(item1)
    local count2 = Tracker:ProviderCountForCode(item2)
    return count1 >= count2
end

function CANBLOWUP()
    return has("morph") and (has("bomb") or has("powerbomb"))
end

function IBJbeginner()
    return has("morph") and has("crossbomb") --and beginner
end

function IBJintermediate()
    return has("morph") and has("bomb") --and intermediate
end