
local Builder = beat4sprite.Builder.Retro

local i = 1        local n = 3 -- Number of actors / textures.

local Cycle1 = {

    OnCommand=function(self) self:stoptweening() end,

    CycleSetupCommand=function(self)

        local builder = self.beat4sprite.Cycle          local t = self:tweenRate() * builder.Rate * 2

        self:queuecommand("Motion"):sleep(t):queuecommand("Prepare")

    end

}

local Cycle2 = {

    InitCommand=function(self)
        
        self.z = function( self, z ) self:GetParent():z(z)      return self end

        self.mainParent = function() return self:GetParent():GetParent() end
        
        self.Index = i      i = i + 1       self:mainParent():SetDrawByZPosition(true)

    end,

    CycleOnCommand=function(self)

        self.CycleTimes = self:GetParent().CycleTimes           self:init( self:GetParent().beat4sprite )

        local z = n - self.Index - 1            self:z(z):queuecommand("Cycle")

    end,

    CyclePlayCommand=function(self)
        
        local s = self.CycleTimes[2]

        Cycle1.CycleSetupCommand(self)  self:sleep(s):queuecommand("Cycle")
        
    end,

    CycleCommand=function(self)

        local s = self.CycleTimes[1]
        
        self:sleep(s):queuecommand("BroadcastSort"):queuecommand("CyclePlay")

    end,

    BroadcastSortCommand=function(self) self:mainParent():playcommand("Sort") end,

    SortCommand=function(self) local z = self:GetParent():GetZ() + 1       self:z( z % n ) end

}

local Actors = {}

local function Texture(i)

    local x = tostring( i + 7 )         if i == n then x = "11" end         return "5th/" .. x .. ".png"

end

for i = 1, n do Actors[i] = Builder { Texture = Texture(i),     Script = "Morph/Split" } end

for k,v in pairs(Actors) do
    
    -- [2] because thats the main script layer in Builder.lua

    local Actor = v:Load() .. Cycle1        Actor[2] = Actor[2] .. Cycle2           Actors[k] = Actor

end

local Background = Builder.Background { Texture = Texture(1) }           Background = Background:Load()

local builder = Builder { Actors = Actors,     Script = "Cycle",       Layers = { Back = Background } }

return builder:merge(...):Load()