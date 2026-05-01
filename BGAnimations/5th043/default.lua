
local Vector = Astro.Vector         local componentDivision = Vector.componentDivision

local function states(self)

    local s = self:cycleState( self.Index - 1 )         return self:setstate(s)

end

local builder = beat4sprite.Builder.Retro {

    {

        Matrix = Vector( 5, 4 ),

        Texture = "5th/3 5x4.png",          States = { Last = 20, Types = "Idle" },

        Sprite = { OnCommand = states },        Colors = color("#808080"),

        Output = {
            
            Offset = false,

            RectCommand=function(self)
                
                local offset = self.ScrollSize          self:moveTextureBy(offset)
            
            end
        
        }

    },

    {

        Dynamic = true,         Matrix = Vector( 5, 4 ),        Effect = { Magnitude = Vector { y = 1 } },

        Texture = "5th/3 5x4.png",          States = { Last = 20, Types = "Idle" },

        Sprite = {

            OnCommand=function(self)
            
                local pos = componentDivision( self.TilePos, self.TileParent.Matrix ) * 360

                self.Effect.updateTime = - pos.y - pos.x          self.Rainbow = true
                
                states(self):setEffect("pulse")

            end

        }

    }

}

return builder:merge(...):Load()