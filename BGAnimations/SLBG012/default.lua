
local Builder = beat4sprite.Builder

local Starlight = beat4sprite.Modules.Starlight

local Texture = "Starlight/decoration01 (stretch).png"

local builder = Builder.Background(Texture):merge {

    Scroll = Astro.Vector("Right"),         Rate = 2,       Colors = tapLua.Color.random()

}

return beat4sprite.BaseFrame {

    beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end },

    Builder.SongBackground():Load() .. { OnCommand=function(self) self:diffusealpha(0.625) end },

    builder:Load()

}