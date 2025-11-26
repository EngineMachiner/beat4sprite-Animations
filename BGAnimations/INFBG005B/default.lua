
local Builder = beat4sprite.Builder

local SongBG = Builder.SongBackground():merge { Colors = color("#707070") }

local function random() return tapLua.Color.random() end

return Builder.Load {

    Texture = "Infinitesimal/lights 3x1.png",

    States = { Last = 3,    Types = { "Idle", "Position" } },       Zoom = 0.3,

    Script = "Particles/Depth/StaticScatter",          Layers = { Back = SongBG:Load() },

    Sprite = {
        
        ScatterCommand=function(self)
        
            for i = 1, 2 do self.beat4sprite.Colors[i] = random() end
        
        end
    
    }

}