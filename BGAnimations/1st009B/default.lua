
local animationPath = beat4sprite.animationPath("1st009")

local Skulls = beat4sprite.Builder.Retro.Load {
    
    Texture = "1st/6/2 15x5.png",       Blend = "add",      States = { Last = 75, Rate = 4 }

}

local Actors = loadfile(animationPath)()          Actors[2] = Skulls

return Actors