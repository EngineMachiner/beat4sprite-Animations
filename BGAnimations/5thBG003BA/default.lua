
local Builder = beat4sprite.Builder.Retro

local i = 1        local n = 4 -- Number of actors / textures.

local function draworder(self)

    local i = self.drawOrder        if not i then return self:draworder( self.Index - 1 ) end
    
    i = i - 1       return self:draworder( i % n )

end

local Cycle = {

    InitCommand=function(self) self.Index = i      i = i + 1 end,

    CycleSetupCommand=function(self) self:playcommand("Animation") end,

    CycleOnCommand=function(self) self:init( self.beat4sprite ):queuecommand("Cycle") end,

    AnimationCommand=function(self)

        local builder = self.beat4sprite.Cycle          local t = self:tweenRate() * builder.Rate * 2

        self:sleep(t):queuecommand("Prepare"):queuecommand("Motion")

    end,

    CycleCommand=function(self)

        local s = self.CycleTimes

        self:sleep( s[1] ):queuecommand("DrawOrder"):playcommand("Animation"):sleep( s[2] ):queuecommand("Cycle")

    end,

    DrawOrderCommand=function(self)

        self:GetParent():RunCommandsOnChildren(draworder):SortByDrawOrder()

    end

}

local Actors = {}

local function Texture(i)

    if i == 1 then return beat4sprite.songBackgroundPath() end

    local x = tostring( i + 6 )         if i == n then x = "11" end         return "5th/" .. x .. ".png"

end

for i = 1, n do Actors[i] = Builder { Texture = Texture(i),     Script = "Morph/Split",     Reversed = true } end

for k,v in pairs(Actors) do Actors[k] = v:Load() .. Cycle end

local Background = Builder.Background { Texture = Texture(1) }           Background = Background:Load()

local builder = Builder {
    
    Actors = Actors,     Script = "Cycle",       Layers = { Back = Background },     Reversed = true

}

return builder:merge(...):Load()