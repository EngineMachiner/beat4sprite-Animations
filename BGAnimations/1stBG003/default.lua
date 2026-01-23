
local Builder = beat4sprite.Builder

local SongBackground = Builder.SongBackground           Builder = Builder.Retro

return Builder.Load {

	SongBackground():merge { Colors = color("#808080") },

    -- Afro layer.

    {
        
        Texture = "1st/5/1.png",    Zoom = 0.75,        Mirror = { x = true },      Blend = "add",

        Output = { OnCommand=function(self) self.Rainbow = true end }
    
    }

}