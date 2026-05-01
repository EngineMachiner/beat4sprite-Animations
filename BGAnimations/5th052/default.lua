
local Texture = "5th/3 4x4.png"

local builder = beat4sprite.Builder.Retro {

    { Texture = Texture,      States = 16,      Output = { Offset = false } },

    {

        Texture = Texture,      States = { Last = 2 },      Rate = 2,

        Sprite = {

            OnCommand=function(self) self:queuecommand("Spin") end,

            SpinCommand = beat4sprite.Actor.Commands.SpinX

        },

        Output = { Offset = false }

    }

}

return builder:merge(...):Load()