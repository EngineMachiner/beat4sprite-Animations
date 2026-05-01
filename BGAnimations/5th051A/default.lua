
local function RectCommand(self) self:addimagecoords( self.TileSize.x / 2, 0 ) end

local builder = beat4sprite.Builder.Retro {

    {
        
        Texture = "5th/4 4x3.png",      States = 11,

        Output = { RectCommand = RectCommand }
    
    },

    {

        Texture = "5th/3 4x4.png",      Rate = 2,       States = 11,

        Sprite = {

            OnCommand=function(self) self:queuecommand("Spin") end,

            SpinCommand = beat4sprite.Actor.Commands.SpinXY

        },

        Output = { Offset = false }

    }

}

return builder:merge(...):Load()