local DNAItem = CustomItem:extend()

function DNAItem:init()
    self:createItem("DNA")
    self.ItemInstance.Icon = ImageReference:FromPackRelativePath("images/checks/DNA_Full.png")

    self.requiredItem = Tracker:FindObjectForCode("RequiredDNA")
    self.count = 0

    self:updateGfx()
end

function DNAItem:canProvideCode(code)
    return code == "dna"
end

function DNAItem:providesCode(code)
    return code == "dna" and self.count >= (self:getRequired() or 1)
end

function DNAItem:onLeftClick()
    if self.count == 12 then
        self.count = 0
    else
        self.count = self.count + 1
    end
    self:updateGfx()
end

function DNAItem:onRightClick()
    if not self.requiredItem then return end
    if self.requiredItem.AcquiredCount == 12 then
        self.requiredItem.AcquiredCount = 0
    else
        self.requiredItem.AcquiredCount = self.requiredItem.AcquiredCount + 1
    end
    self:updateGfx()
end

function DNAItem:save()
    return { count = self.count }
end

function DNAItem:load(data)
    self.count = data.count or 0
    self:updateGfx()
end

function DNAItem:getRequired()
    if self.requiredItem then return self.requiredItem.AcquiredCount end
    return nil
end

function DNAItem:updateGfx()
    local required = self:getRequired()

    self.ItemInstance:SetOverlay(string.format("%s/%s", self.count, required or "?"))
    if self.count >= (required or 13) then
        self.ItemInstance:SetOverlayColor("00FF00")
    else
        self.ItemInstance:SetOverlayColor("FFFFFF")
    end

    if self.count == 0 then
        self.ItemInstance.IconMods = "@disabled"
    else
        self.ItemInstance.IconMods = ""
    end
end

MetroidDNA = DNAItem()

ScriptHost:AddWatchForCode("Required DNA count", "RequiredDNA", function(_) MetroidDNA:updateGfx() end)
