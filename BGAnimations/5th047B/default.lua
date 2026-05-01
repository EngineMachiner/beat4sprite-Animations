
local path = beat4sprite.animationPath("5th047A")           local Vector = Astro.Vector

local Actor = loadfile(path) { Scroll = Vector("Down"),   Rate = 2 }

local builder = Actor.Builder           local Types = { "Idle", "Position" }

builder = beat4sprite.Builder.Retro {

    builder:input(),

    {

        Texture = "5th/6 4x3.png",      States = { First = 5, Last = 6, Types = Types },

        Sprite = {
            
            Motion2Command=function(self)
                
                local z = self:GetRotationZ() + 180         self:rotationz(z)
                
            end
        
        },

        Direction = Vector("Down"),        Rate = 2,        Script = "Particles/Depth/Spread"

    }

}

return builder:merge(...):Load()