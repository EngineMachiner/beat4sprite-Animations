
local path = beat4sprite.animationPath("5th027A")

return loadfile(path) {
    
    [2] = { 
        
        Sprite = {
        
            OnCommand=function(self) self:queuecommand("Spin") end,

            SpinCommand = beat4sprite.Actor.Commands.SpinY
    
        }

    }

}