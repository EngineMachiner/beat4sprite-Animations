
local Builder = beat4sprite.Builder.Retro           local scale = SCREEN_HEIGHT / 720

local Background = beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

return Builder.Load {

    {

        Texture = "4th/3 5x4.png",      States = { First = 5, Last = 20 },

        Output = { Offset = false, TextureCommand=function(self) self:addimagecoords( 180 * scale, 0 ) end },

        Layers = { Back = Background },

    },

    {

        Dynamic = true,

        Texture = "4th/1 4x7.png",      States = { Last = 25 },     Blend = "add",

        Sprite = {
            
            OnCommand=function(self)
                
                self.Effect.updateTime = self.Index * 16             self.Rainbow = true
            
            end
        
        }

    }

}