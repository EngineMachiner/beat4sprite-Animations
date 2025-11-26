
local Builder = beat4sprite.Builder

local Infinitesimal = beat4sprite.Modules.Infinitesimal         local graphic = Infinitesimal.graphic


local SongBG = Builder.SongBackground():merge {

    Output = { OnCommand=function(self) self.Rainbow = true end }

}

return Builder.Load {

    Texture = graphic("UI/Heart (doubleres).png"),          Zoom = 2,       Reversed = true,

    Script = "Particles/Depth/Bounce",          Layers = { Back = SongBG:Load() }

}