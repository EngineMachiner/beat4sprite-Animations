
local Builder = beat4sprite.Builder

local NX = beat4sprite.Modules.NX             local graphic = NX.bga


local Background = Builder.SongBackground():Load()

return Builder.Load { 
    
    Texture = "NX/ability 3x1.png",         States = { First = 1, Last = 3 },

    Sprite = { OnCommand=function(self) self.statesDelay = 1 / 4 end },

    Output = { Scale = 0.875,       Offset = false },

    Rate = 2,           Layers = { Back = Background }

}