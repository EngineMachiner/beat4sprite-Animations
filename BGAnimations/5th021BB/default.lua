
local path = beat4sprite.animationPath("5th021B")

return loadfile(path) {

    [2] = {
        
        States = { Types = "Idle" },

        Sprite = {

            OnCommand=function(self) self:queuecommand("Spin") end,

            SpinCommand = beat4sprite.Actor.Commands.SpinY

        }
    
    }

}