
local path = ... or "5th010AA"          path = beat4sprite.animationPath(path)

local Quad = beat4sprite.ScreenBlend("InvertDest") .. { OnCommand=function(self) self:Center() end }

return loadfile(path) { Layers = { Front = Quad } }