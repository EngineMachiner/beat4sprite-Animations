
local path = beat4sprite.animationPath("5th024BCB")         local builder = loadfile(path)().Builder

local OnCommand = builder[2].Sprite.OnCommand

builder = builder:merge {

    [2] = { Sprite = { OnCommand=function(self) self:rotationx(90) OnCommand(self) end } }

}

return builder:Load()