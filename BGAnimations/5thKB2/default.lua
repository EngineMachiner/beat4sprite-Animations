
local Vector = Astro.Vector         local componentDivision = Vector.componentDivision

local Renderer = tapLua.Sprite.Renderer         local Matrix = Vector( 5, 1 )

local properties = tapLua.Load( "Sprite/Crop", "States" )           local p = properties(Matrix)

local function size() return Renderer:GetSize() end

local builder = beat4sprite.Builder.Retro {

    { Texture = "5th/1.png",         Script = "Kaleidoscope/Tile" },

    {

        Dynamic = true,     Texture = "5th/2.png",      Matrix = Matrix,
        
        States = { Matrix = Matrix,     Scroll = Vector("Right"),      Position = true,    Rate = 0.25 },

        Sprite = {

            InitCommand=function(self)
                
                if self.Index > 1 then return end

                local size = componentDivision( size(), Matrix )        Renderer:setSizeVector(size)
            
            end,

            OnCommand=function(self)

                self:setSizeVector( size() ):queuecommand("PostInit")

                self:SetStateProperties(p)          local p = self:scrollStates()

                self:SetStateProperties(p):queuecommand("Spin")
            
            end,

            SpinCommand = beat4sprite.Actor.Commands.SpinX

        }

    }

}

return builder:merge(...):Load()