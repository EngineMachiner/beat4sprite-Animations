
local path = beat4sprite.animationPath("5thBG000")

return loadfile(path) { Output = { OnCommand=function(self) self.Rainbow = true end } }