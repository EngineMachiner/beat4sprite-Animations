
local Vector = Astro.Vector         local alt = ...

local componentDivision = Vector.componentDivision          local scale = SCREEN_HEIGHT / 720

local function props(offset)

    local t = {}
    
    for i = 0, 4 do
        
        i = offset * 5 + i           t[#t+1] = { Frame = i % 10 + 5 }
    
    end
    
    return t

end

local Shirts = beat4sprite.Builder.Retro.Load {

    Dynamic = true,
    
    Texture = "5th/3 5x4.png",      Matrix = Vector( 4, 5 ),        States = { Position = true },

    Sprite = {
        
        OnCommand=function(self)
        
            local pos = componentDivision( self.TilePos, self.TileParent.Matrix ) * 360

            self.Effect.updateTime = - pos.y / 4 - pos.x            self.Rainbow = true


            local pos = self.TilePos            local offset = alt and pos.x or pos.y

            local props = props(offset)         self:SetStateProperties(props):initSprite():positionState()


            offset = pos / 2 - Vector { y = 1.5 }       self:addPos( 32 * offset * scale )

        end
    
    }

}

local path = beat4sprite.animationPath("5th034C")

return loadfile(path) { Layers = { Front = Shirts } }