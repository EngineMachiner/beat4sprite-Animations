
local Vector = Astro.Vector

local function props(offset)

    local t = {}
    
    for i = 0, 4 do
        
        i = offset * 5 + i          i = i % 20           t[#t+1] = { Frame = i }
    
    end
    
    return t

end

local builder = beat4sprite.Builder.Retro {

    Texture = "5th/3 5x4.png",
    
    Matrix = Vector( 4, 4 ),        Scroll = Vector("Up"),        Rate = 2,

    Output = {
        
        Offset = false,
        
        RectCommand=function(self) self:addimagecoords( - self.TileSize.x / 2, 0 ) end
    
    },

    Sprite = {
        
        OnCommand=function(self)
            
            local props = props( self.Index + self.TilePos.y - 1 )
            
            self:SetStateProperties(props):initSprite()
        
        end
    
    }
    
}

return builder:merge(...):Load()