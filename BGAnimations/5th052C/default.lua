
local path = beat4sprite.animationPath("5th052")

return loadfile(path) {
    
    [2] = { Sprite = { SpinCommand = beat4sprite.Actor.Commands.SpinXY } }

}