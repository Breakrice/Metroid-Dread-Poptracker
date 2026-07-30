local function createProgressiveItem(item_code, component_codes)
    local item = ScriptHost:CreateLuaItem()
    function item:CanProvideCodeFunc(code)
        return code == item_code
    end
    function item:OnLeftClickFunc()
        for _, code in ipairs(component_codes) do
            local obj = Tracker:FindObjectForCode(code)
            if obj and not obj.Active then
                obj.Active = true
                return
            end
        end
    end
    return item
end

createProgressiveItem("pbeam", {"wide", "plasma", "wave"})
createProgressiveItem("pmissile", {"super", "ice"})
