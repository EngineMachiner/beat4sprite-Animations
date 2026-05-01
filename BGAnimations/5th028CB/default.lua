
local path = beat4sprite.animationPath("5th028C")

local Background = tapLua.ScreenQuad( Color.Black ) .. {

    OnCommand=function(self) self:Center() end

}

return loadfile(path) {
    
    { 
        
        Layers = { Back = Background },

        Output = {

            OnCommand=function(self) self:queuecommand("Alpha") end,

            AlphaCommand = beat4sprite.Actor.Commands.Alpha

        }

    }

}