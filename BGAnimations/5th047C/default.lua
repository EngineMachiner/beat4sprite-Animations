
local path = beat4sprite.animationPath("5th047B")           local Vector = Astro.Vector

local Actor = loadfile(path) {

    {
        
        Texture = "5th/7 4x4.png",    States = { First = 10, Last = 11 },

        Output = { OnCommand=function(self) self.Rainbow = true end },

        Scroll = Vector("DownRight")
    
    },

    {

        Texture = "5th/6 4x4.png",      States = { First = 9, Last = 10 },

        Script = "Particles/LaneSweep",         Rate = 2

    }

}

local builder = Actor.Builder           builder[2]:input().Sprite = {}

return builder:merge(...):Load()