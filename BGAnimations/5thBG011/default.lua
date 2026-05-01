
local Builder = beat4sprite.Builder.Retro

local Cycle = {

    CycleSetupCommand=function(self) self:playcommand("Animation") end,

    CycleOnCommand=function(self) self:init( self.beat4sprite ):diffusealpha(0):queuecommand("Cycle") end,

    AnimationCommand=function(self)

        local builder = self.beat4sprite.Cycle          local t = self:tweenRate() * builder.Rate * 2

        self:diffusealpha(1):sleep(t)

    end,

    CycleCommand=function(self)

        local s = self.CycleTimes

        self:sleep( s[1] ):playcommand("Animation"):sleep( s[2] ):diffusealpha(0):queuecommand("Cycle")

    end

}

local Texture = "5th/1 2x2.png"

local Output = { Offset = false,    RectCommand=function(self) self:moveTextureBy( self.TileSize ) end }

local Actors = {

    Builder.Background { Texture = beat4sprite.songBackgroundPath() },

    Builder { Texture = Texture,    States = 2,     Mirror = true,      Output = Output },
    Builder { Texture = Texture,    States = 3,     Mirror = true,      Output = Output }

}

for k,v in pairs(Actors) do Actors[k] = v:Load() .. Cycle end

local builder = Builder { Actors = Actors,       Script = "Cycle" }

return builder:merge(...):Load()