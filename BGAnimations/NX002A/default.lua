
local Builder = beat4sprite.Builder

local NX = beat4sprite.Modules.NX             local graphic = NX.bga


local Actors = {}

local path = graphic( "ScreenWithMenuElements background", "blur (stretch).png" )

for i = 1, 4 do

    local z = i - 1         z = z * 90

    local builder = Builder.Background(path):merge {
        
        Rotation = Astro.Vector { z = z },          Effect = { Offset = 0.5 },

        Sprite = { 
            
            OnCommand=function(self)

                self:setEffect("diffuseshift")          if i % 2 == 0 then self:swapSize() end

            end
        
        }
    
    }

    Actors[i] = builder:Load() .. {
        
        CycleSetupCommand=function(self) self:playcommand("Fading") end,

        BPMChange2Command=function(self) self:stoptweening():queuecommand("CycleOn") end,

        CycleOnCommand=function(self)

            if self:isOnGameplay() and tapLua.currentBPM() >= 200 then self:diffuse( Color.Red ) end

            local alpha = i > 1 and 0 or 1      self:diffusealpha(alpha):sleep(3):queuecommand("Cycle")
        
        end,

        FadingCommand=function(self) self:linear(1):diffusealpha(1):sleep(6):linear(1):diffusealpha(0) end,

        CycleCommand=function(self)

            local s1, s2 = table.unpack( self.CycleTimes )

            self:sleep(s1):playcommand("Fading"):sleep(s2):queuecommand("Cycle")

        end

    }

end

local Background = beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

return Builder.Load { Actors = Actors,        Script = "Cycle",       Layers = { Back = Background } }