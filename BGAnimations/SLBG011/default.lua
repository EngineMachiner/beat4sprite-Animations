
local Builder = beat4sprite.Builder

local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

bga = bga( "ScreenWithMenuElements background", "SN1/flat grid (doubleres).png" )

return beat4sprite.BaseFrame {

    beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end },

    Builder.SongBackground():Load() .. { OnCommand=function(self) self:diffusealpha(0.625) end },

    Builder.Background(graphic):Load() .. {
        
        OnCommand=function(self) self:queuecommand("Cycle") end,

        CycleCommand=function(self)
        
            local rate = self:statesRate() * 4

            self:sleep(rate):diffusealpha(0):sleep(rate):diffusealpha(1):queuecommand("Cycle")
        
        end
    
    }

}