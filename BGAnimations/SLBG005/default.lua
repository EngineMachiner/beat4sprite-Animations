
local builder = beat4sprite.Builder {

    Texture = "Starlight/CDs 3x3.png",          Script = "Particles/ScreenBounce",

    Zoom = 0.75,        States = { First = 1, Last = 8, Types = { "Idle", "Position" } },

    Rate = 2

}

return beat4sprite.BaseFrame {

    beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end },

    beat4sprite.Builder.SongBackground():Load() .. { OnCommand=function(self) self:diffusealpha(0.625) end },          
    
    builder:merge(...):Load()

}