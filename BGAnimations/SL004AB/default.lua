
local Starlight = beat4sprite.Modules.Starlight         local graphic = Starlight.graphic

local style = Astro.Table.random { "Single", "Versus", "Double" }

return beat4sprite.BaseFrame {
    
    Starlight.Background(),

    beat4sprite.Builder.Load {

        Texture = graphic("ScreenSelectStyle Scroll/" .. style .. "/project_char.png"),

        Script = "Morph/Flag",       Effect = { Period = 4 },       Layers = { Back = true }

    }

}