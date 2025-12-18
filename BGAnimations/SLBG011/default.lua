
local Builder = beat4sprite.Builder

local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local grid = bga( "ScreenWithMenuElements background", "SN1/flat grid (doubleres).png" )

local Background = Builder.Background(grid)

return beat4sprite.BaseFrame {

    beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end },

    Builder.SongBackground():Load() .. { OnCommand=function(self) self:diffusealpha(0.625) end },

    Background:Load() .. {
        
        OnCommand=function(self) self:init(Background):queuecommand("Cycle") end,

        CycleCommand=function(self)
        
            local rate = self:statesRate()

            self:sleep(rate * 2):linear(rate):diffusealpha(0):sleep(rate * 2):linear(rate):diffusealpha(1)

            self:queuecommand("Cycle")

        end
    
    }

}