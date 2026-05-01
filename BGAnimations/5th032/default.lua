
local path = beat4sprite.animationPath("5th031A")

local builder = loadfile(path)().Builder        builder = builder:merge { States = { Rate = 4 } }

local props = { { Frame = 8 }, { Frame = 9 }, { Frame = 8 } }

builder = beat4sprite.Builder.Retro {

    builder:input(),

    {
     
        Dynamic = true,         Matrix = Astro.Vector( 4, 4 ),
        
        Texture = "5th/6 4x4.png",

        Sprite = {

            OnCommand=function(self) self:SetStateProperties(props):queuecommand("Spin") end,

            SpinCommand = beat4sprite.Actor.Commands.SpinXY

        }
    
    }

}

return builder:merge(...):Load()