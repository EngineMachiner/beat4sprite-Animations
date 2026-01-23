
local Builder = beat4sprite.Builder

local SongBackground = Builder.SongBackground


Builder = Builder.Retro           local i = 0

local builder = Builder {

	SongBackground(),

    -- Disks and flowers.

	{

		Texture = "1st/8 5x4.png",          Quantity2 = 5,
        
        Centered = true,        States = { Last = 2,    Types = "Idle" },

        Group = {
            
            OnCommand=function(self) self.Sleep = 0.5 end,

            PrepareCommand=function(self) self:xy( 0, SCREEN_HEIGHT / 4 ) end
        
        },

        Sprite = {
            
            OnCommand=function(self)
            
                local x = self.Index - 2                self:addx( x * 32 ):y(0):z(0)

                local state = self:cycleState(i)        self:setstate(state)        i = i + 1
        
            end
        
        },

        Script = "Particles/Depth/Cascade.lua"
        
	}

}

return builder:merge(...):Load()