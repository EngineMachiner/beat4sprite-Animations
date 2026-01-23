
-- Lighting signs.

local Builder = beat4sprite.Builder.Retro           local ScreenQuad = beat4sprite.ScreenQuad

local builder = {}

for i = 1,3 do

	builder[i] = Builder.Background {

        Texture = "1st/3/" .. i .. ".png",      Dynamic = true,
        
        Matrix = Astro.Vector(1,1),         Effect = { Period = 4 },        Mirror = false,

        Output = {

            OnCommand=function(self)

                local offset = i - 1        offset = offset / 3         self.Effect.Offset = offset

                self:setEffect("diffuseramp")

            end

        }

    }
	
end

return beat4sprite.ActorFrame{ 
    
    ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end },

    Builder(builder):Load()

}