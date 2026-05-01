
local isEven = Astro.Math.isEven

local builder = beat4sprite.Builder.Retro {

    Texture = "5th/6 4x3.png",
    
    States = { First = 9,   Last = 10,      Rate = 2 },         Matrix = Astro.Vector( 2, 1 ),

    Output = { RectCommand=function(self) self:addimagecoords( self.TileSize.x / 2, 0 ) end },

    Sprite = {
        
        OnCommand=function(self)
            
            local x = self.TilePos.x         if isEven(x) then self:setstate(1) end
        
        end
    
    }

}

return builder:merge(...):Load()