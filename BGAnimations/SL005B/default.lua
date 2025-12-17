
local path = beat4sprite.animationPath("SL005A")

return loadfile(path) {
    
    Script = "Particles/Depth/Spread",      Direction = Astro.Vector("Down"),

    Sprite = { OnCommand=function(self) self:rotationz(0) end }

}