
local Builder = beat4sprite.Builder

local NX = beat4sprite.Modules.NX             local graphic = NX.bga


local Actors = {}

local paths = { "blur (stretch).png", "supernova.png", "a3blue.png", "cyberia.png", "a3gold.png" }

for i,v in ipairs(paths) do

    local path = graphic( "ScreenWithMenuElements background", v )

    Actors[i] = Builder.Background(path):Load() .. {

        CycleSetupCommand=function(self) self:playcommand("Fading") end,

        CycleOnCommand=function(self)
            
            local t = self:tweenRate() * 1.5

            local alpha = i > 1 and 0 or 1      self:diffusealpha(alpha):sleep(t):queuecommand("Cycle")
        
        end,

        BPMChange2Command=function(self) self:stoptweening():queuecommand("CycleOn") end,

        FadingCommand=function(self)
            
            local t = self:tweenRate() * 0.5

            self:linear(t):diffusealpha(1):sleep( t * 6 ):linear(t):diffusealpha(0)
        
        end,

        CycleCommand=function(self)

            local s1, s2 = table.unpack( self.CycleTimes )

            self:sleep(s1):playcommand("Fading"):sleep(s2):queuecommand("Cycle")

        end

    }

end

local Background = beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

return Builder.Load { Actors = Actors,        Script = "Cycle",       Layers = { Back = Background } }