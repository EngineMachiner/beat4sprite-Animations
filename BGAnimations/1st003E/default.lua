
local Builder = beat4sprite.Builder.Retro           local ScreenQuad = beat4sprite.ScreenQuad

local Background = ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

local Wave = Builder.Background2 {

    Texture = "1st/9/4 5x3.png",    States = { Last = 15 },

    Output = { OnCommand=function(self) self.Rainbow = true end },

    Matrix = Astro.Vector(2,2),     Blend = "add",      Layers = { Back = Background }

}

return Builder.Load {

    Wave:input(),

    -- Lasers.

	{

        FOV = 170,      Rate = 2,

        Texture = "1st/2/3 32x4.png",       States = { Last = 32 * 4, Types = "Idle" },

		Quantity2 = function() return 1 end,        Script = "Particles/Depth/Cascade.lua",

        Sprite = {
            
            OnCommand=function(self)
                
                local n = self:GetNumStates()       local i = math.random(n) - 1

                self:setstate(i):rotationx(90):zoomx(0.75):zoomy(0.875):blend("add")
            
            end
            
        }

	}

}