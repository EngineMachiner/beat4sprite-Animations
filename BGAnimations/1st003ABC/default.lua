
local Builder = beat4sprite.Builder.Retro           local isEven = Astro.Math.isEven

local Wave = Builder.Background2 {

    Texture = "1st/9/3 5x6.png",        States = { Last = 30 },         Matrix = Astro.Vector(2,2)

}

return Builder.Load {

    Wave:input(),

    -- Bowling.

	{
        
        Texture = "1st/1 1x8.png",          Colors = color("#00FFFF"),

        States = { Last = 8, Types = "PingPong" },      Blend = 'add',

        Sprite = {
            
            OnCommand=function(self)
                
                local i = self.TilePos.y        i = isEven(i) and 1 or self:GetNumStates() / 2
                
                self:setstate( i - 1 )
            
            end
        
        },
    
    }

}