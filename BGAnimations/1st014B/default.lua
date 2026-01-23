
-- Radioactive background scrolling both ways vertically.

local Vector = Astro.Vector

local Builder = beat4sprite.Builder.Retro

local builder = Builder {
    
    Builder.Background {
        
        Texture = "1st/6.png",      Scroll = Vector("Up"),      ScreenScale = false
    
    }

}

builder[2] = builder[1]:merge { Alpha = 0.5,	Scroll = Vector("Down") }

return builder:Load()