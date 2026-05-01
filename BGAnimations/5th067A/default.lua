
local function RectCommand(self) self:addimagecoords( self.TileSize.x / 2, 0 ) end

local Builder = beat4sprite.Builder.Retro

local builder = Builder {

    Builder.Background { Texture = "5th/9.png" },

    {
        
        Texture = "5th/5 4x3.png",      States = 8,       Matrix = Astro.Vector( 4, 3 ),

        Sprite = {

            OnCommand=function(self) self:queuecommand("Spin") end,

            SpinCommand = beat4sprite.Actor.Commands.SpinY

        },

        Output = { RectCommand = RectCommand }
    
    }

}

return builder:merge(...):Load()