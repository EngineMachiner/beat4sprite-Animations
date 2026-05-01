
local path = beat4sprite.animationPath("5th067A")

return loadfile(path) { [2] = { Sprite = { SpinCommand = beat4sprite.Actor.Commands.SpinX } } }