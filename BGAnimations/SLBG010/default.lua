
local Builder = beat4sprite.Builder

local Starlight = beat4sprite.Modules.Starlight         local graphic = Starlight.graphic

graphic = graphic("Common fallback background.png")

return beat4sprite.BaseFrame {

    beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end },

    Builder.SongBackground():Load() .. { OnCommand=function(self) self:diffusealpha(0.625) end },

    Builder.Background(graphic):Load() .. { OnCommand=function(self) self:diffusealpha(0.7) end }

}