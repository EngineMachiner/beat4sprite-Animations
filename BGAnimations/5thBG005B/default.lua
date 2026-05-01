
local path = beat4sprite.animationPath("5thBG005A")

return loadfile(path)() .. {
    
    OnCommand=function(self) self.Rainbow = true end,

    UpdateFunctionCommand=function(self) self:updateRainbow() end

}