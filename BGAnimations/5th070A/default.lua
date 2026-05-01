
local builder = beat4sprite.Builder.Retro {

    {
        
        Texture = "5th/1 2x2.png",    States = 3,   Mirror = true,

        Output = { Offset = false,         RectCommand=function(self) self:moveTextureBy( self.TileSize ) end }
    
    },

    {

        Texture = "5th/3 4x4.png",      States = 11,    Script = "Particles/Depth/Helix",

        Sprite = {

            OnCommand=function(self) local r = self.Index - 1       self:rotationz( r * 45 + 90 ) end

        }

    }

}

return builder:merge(...):Load()