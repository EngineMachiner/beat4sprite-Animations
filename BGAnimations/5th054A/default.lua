
local props = { { Frame = 0 }, { Frame = 2 } }

local builder = beat4sprite.Builder.Retro {

    {

        Texture = "5th/1 2x2.png",         Mirror = true,

        Output = { Offset = false,         RectCommand=function(self) self:moveTextureBy( self.TileSize ) end },

        Sprite = { OnCommand=function(self) self:SetStateProperties(props):initSprite() end }

    },

    { Texture = "5th/3 4x4.png",      States = { First = 9, Last = 10 },    Output = { Offset = false } }

}

return builder:merge(...):Load()