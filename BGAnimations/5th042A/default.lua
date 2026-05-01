
local function RectCommand(self) self:addimagecoords( 0, self.TileSize.y / 2 ) end

local builder = beat4sprite.Builder.Retro {

    { Texture = "5th/2 5x4.png",        States = 7,       Output = { RectCommand = RectCommand } },

    {
        
        Texture = "5th/2 5x4.png",        States = 3,
        
        Script = "Particles/Depth/Cascade",     Effect = { Magnitude = Astro.Vector { z = 45 } },

		Sprite = { OnCommand=function(self) self:setEffect("spin") end },
    
    }

}

return builder:merge(...):Load()