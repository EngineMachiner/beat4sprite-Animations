
local path = beat4sprite.animationPath("5th030C")         local builder = loadfile(path)().Builder

local OnCommand = builder[2].Sprite.OnCommand

builder = builder:merge {
    
    [2] = { Sprite = { OnCommand=function(self) OnCommand(self) self:rotationx(90) end } }

}

return builder:Load()