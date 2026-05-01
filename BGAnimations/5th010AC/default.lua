
local componentDivision = Astro.Vector.componentDivision

local path = beat4sprite.animationPath("5th010AA")          local merge = tapLua.deepMerge

local input = {

    Texture = "5th/7 4x4.png",
    
    States = { First = 1, Last = 4 },      Scroll = false,      Rate = 2,

    Quad = {

        Dynamic = true,         Blend = "Modulate",         Effect = { Period = 0.5 },

        Sprite = {
            
            OnCommand=function(self)
                
                local pos = componentDivision( self.TilePos, self.TileParent.Matrix ) * 360

                self.Effect.updateTime = pos.y / 4 - pos.x            self.Rainbow = true

            end
        
        }

    }

}

input = merge( input, ... )         return loadfile(path)(input)