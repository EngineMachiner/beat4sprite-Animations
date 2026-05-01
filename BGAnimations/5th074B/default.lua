
local Vector = Astro.Vector

local componentDivision = Vector.componentDivision

local Background = beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

return beat4sprite.Builder.Retro.Load {

    Layers = { Back = Background },

    Texture = "5th/7 4x3.png",      Output = { Offset = false },
    
    Scroll = Vector("Up"),          States = { Last = 12 },         Rate = 2,

    Quad = {

        Dynamic = true,     Effect = { Period = 4 },
        
        Colors = { Color.Black, Color.Red },     Blend = true,

        Matrix = function(matrix) return matrix + Vector { y = 7 } end,

        Sprite = {
            
            OnCommand=function(self)
                
                local Effect = self.Effect

                local offset = componentDivision( self.TilePos, self.TileParent.Matrix ) * 1.75

                Effect.Offset = offset.y - offset.x          self:setEffect("diffuseshift")
            
            end
        
        }

    }

}