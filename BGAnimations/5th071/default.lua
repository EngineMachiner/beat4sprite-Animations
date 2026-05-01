
local Builder = beat4sprite.Builder.Retro

local Vector = Astro.Vector         local componentDivision = Vector.componentDivision

local Renderer = tapLua.Sprite.Renderer         local Matrix = Vector( 5, 4 )

local properties = tapLua.Load( "Sprite/Crop", "States" )           local p = properties(Matrix)

local function size() return Renderer:GetSize() end

local builder = Builder {

    Builder.Background { Texture = "5th/2.png" },

    {

        Dynamic = true,     Texture = "5th/1.png",      Matrix = Matrix,
        
        States = { Matrix = Matrix,     Scroll = Vector("Up"),      Position = true,    Rate = 0.25 },

        Effect = { Magnitude = Vector { y = 1 },   Period = 2 },

        Sprite = {

            InitCommand=function(self)
                
                if self.Index > 1 then return end

                local size = componentDivision( size(), Matrix )        Renderer:setSizeVector(size)
            
            end,

            OnCommand=function(self)

                self:setSizeVector( size() ):queuecommand("PostInit")

                self:SetStateProperties(p)          local p = self:scrollStates()

                self:SetStateProperties(p):setEffect("pulse")
            
            end

        }

    }

}

return builder:merge(...):Load()