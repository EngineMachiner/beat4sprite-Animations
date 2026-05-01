
local path = beat4sprite.animationPath("5th033A")           local merge = tapLua.deepMerge

local Vector = Astro.Vector         local componentDivision = Astro.Vector.componentDivision

local input = {
    
    Texture = "5th/3B 5x4.png",

    Quad = {
        
        Blend =  true,      Matrix = Vector( 8, 8 ),
        
        Sprite = {
            
            OnCommand=function(self)
                
                local pos = componentDivision( self.TilePos, self.TileParent.Matrix ) * 360

                self.Effect.updateTime = - pos.y - pos.x          self.Rainbow = true
            
            end
        
        }
    
    }

}

input = merge( input, ... )         return loadfile(path)(input)