
local Builder = beat4sprite.Builder.Retro           local isEven = Astro.Math.isEven


local starBuilder

local function star(self)

    local x, y = self.TilePos:unpack()          local i = x + y         

    if isEven(i) then return end
    
    
    local path = beat4sprite.Path .. "Resources/4th/1 5x4.png"
    
    starBuilder = starBuilder or self.beat4sprite:merge { States = { First = 2, Last = 14, Types = {} } }

    self:Load(path):initParticle( starBuilder, i )

end


local builder = Builder {

    Texture = "4th/2 5x4.png",          States = 1,

    Sprite = {
        
        OnCommand=function(self)
            
            local angle = math.random(360)      self:blend("add"):rotationz(angle)      star(self)
        
        end,

        MotionCommand=function(self) self:rotationz( self:GetRotationZ() + 360 ) end
    
    },

    Script = "Particles/Explosion"

}

local Cakes = builder:Load() .. {

    OnCommand=function(self) self:queuecommand("Cycle") end,

    BPMChange2MessageCommand=function(self) self:stoptweening():queuecommand("Cycle") end,

    CycleCommand=function(self)
        
        local t = self:tweenRate() * 4

        self:queuecommand("Prepare"):queuecommand("Motion"):sleep(t):queuecommand("Cycle")
    
    end

}


builder = Builder {
    
    Texture = "4th/3 5x4.png",      States = { First = 5,   Last = 20 },

    Sprite = { OnCommand=function(self) self:blend("add") star(self) end },

    Script = "Particles/Explosion"

}

local Pigs = builder:Load() .. {

    OnCommand=function(self) self:queuecommand("Start") end,

    StartCommand=function(self)
        
        local t = self:tweenRate() * 2

        self:diffusealpha(0):sleep(t):diffusealpha(1):queuecommand("Cycle")
    
    end,

    BPMChange2MessageCommand=function(self) self:stoptweening():queuecommand("Start") end,

    CycleCommand = Cakes.CycleCommand

}

local Front = Def.ActorFrame { Cakes, Pigs }

return Builder.Load {

    Texture = "4th/4 5x4.png",      States = 11,        Mirror = true,
    
    Colors = color("#0000FF"),      Effect = { Magnitude = Astro.Vector { z = -45 } },

    Composition = { OnCommand=function(self) self:setEffect("spin"):zoom(1.4) end },

    Output = { Offset = false,      Scale = 0.75 },        Layers = { Front = Front }

}