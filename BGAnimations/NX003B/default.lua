
local Builder = beat4sprite.Builder

local NX = beat4sprite.Modules.NX             local graphic = NX.bga


local path = graphic("_door", "bigblackbackground (doubleres).png")

local Background = Builder.Background(path):Load()

return Builder.Load {

    Texture = "NX/lights 8x1.png",          Script = "Particles/Depth/Spread",          Zoom = 3,

    Direction = Astro.Vector("Up"),         States = { First = 1, Last = 8, Types = { "Idle", "Position" } },
    
    Layers = { Back = Background }

}