
local Superuser = beat4sprite.Modules.Superuser         local graphic = Superuser.graphic

return beat4sprite.ActorFrame { 
    
    Superuser.Background():Load(),

    beat4sprite.Builder.Load {

        Effect = { Period = 4 },                Layers = { Back = true },

        Texture = graphic("karen.png"),         Script = "Morph/Flag",

        Sprite = { OnCommand=function(self) self:zoom( self:GetZoom() / 2 ) end }

    }

}