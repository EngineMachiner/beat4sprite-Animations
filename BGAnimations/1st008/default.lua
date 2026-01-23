
local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

local Background = Builder.Background2 {
    
    Texture = "1st/4.png",      Matrix = Vector(1,1),     Mirror = false

}

local builder = Builder {

	Background:input(),

    -- Spiral trace of butterflies.

	{

        Dynamic = true,        Spiral = true,

		Texture = "1st/9 5x2.png",		States = 3,         Matrix = Vector(5,4),

        Sprite = {
            
            OnCommand=function(self)
                
                local i = self:spiralIndex() - 1        local sleep = i * self:tweenRate() / 8

                self:diffusealpha(0):sleep(sleep):queuecommand("Spiral")
            
            end,

            SpiralCommand=function(self)
            
                local t = self:tweenRate() / 2

                self:linear(t):diffusealpha(1):sleep( t * 7 )
                self:linear(t):diffusealpha(0):sleep( t * 7 )

                self:queuecommand("Spiral")
            
            end
        
        }

	}

}

return builder:merge(...):Load()