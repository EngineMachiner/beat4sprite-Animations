
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

return beat4sprite.ActorFrame {
    
    Starlight.Background(),

    beat4sprite.Builder.Load {

        Texture = bga("_Logo", "XX.png"),           Effect = { Period = 8 },

        Sprite = { OnCommand=function(self) self:zoom( self:GetZoom() / 2 ) end },

        Script = "Morph/Flag",       Layers = { Back = true },      Type = 2

    }

}