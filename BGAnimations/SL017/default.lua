
local Starlight = beat4sprite.Modules.Starlight

local Texture = "Starlight/decoration01 (stretch).png"

local builder = beat4sprite.Builder.Background(Texture):merge {

    Scroll = Astro.Vector("Right"),         Rate = 2,       Colors = tapLua.Color.random()

}

return beat4sprite.BaseFrame {

    Starlight.Background(),      builder:Load()

}