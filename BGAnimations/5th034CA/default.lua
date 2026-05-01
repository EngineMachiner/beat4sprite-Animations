
local path = beat4sprite.animationPath("5th034C")

return loadfile(path) { Output = { OnCommand=function(self) self.Rainbow = true end } }