

local path = beat4sprite.animationPath("SL016A")

local color = tapLua.Color.random( 0.75, 0.5 )

return loadfile(path) {
    
    Sprite = { OnCommand=function(self) self:diffuse(color) end },

    Script = "Morph/Flag"

}