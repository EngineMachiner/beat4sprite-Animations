
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local builder = beat4sprite.Builder {

    Texture = bga("ScreenSelectMusic overlay/RebootDeco", "JacketRing.png"),

    Script = "Particles/Depth/Spread",          Zoom = 0.25,     Rate = 2,      Quantity = 18,

    Sprite = { PrepareCommand=function(self) self.beat4sprite.Colors[1] = tapLua.Color.random() end },

    Direction = Astro.Vector("Up")

}

return beat4sprite.BaseFrame {
    
    beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end },

    beat4sprite.Builder.SongBackground():Load() .. { OnCommand=function(self) self:diffusealpha(0.625) end },     
    
    builder:merge(...):Load()

}