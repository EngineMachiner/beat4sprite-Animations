
local path = beat4sprite.animationPath("5thBG002A")

local builder = loadfile(path)().Builder

local builder = beat4sprite.Builder.Retro {

    builder:input(),

    { Texture = "5th/6 4x4.png",     States = { Last = 2,   Types = "Position" },     Script = "Particles/ScreenBounce" }

}

return builder:merge(...):Load()