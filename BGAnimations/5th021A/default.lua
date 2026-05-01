
local isEven = Astro.Math.isEven

local Builder = beat4sprite.Builder.Retro           local Matrix = Astro.Vector( 4, 4 )

local builder = Builder {

    Builder.Background { Texture = "5th/5.png",    Mirror = true },

    {

        Dynamic = true,     Matrix = Matrix,
        
        Texture = "5th/3 4x4.png",    States = { First = 3, Last = 4, Rate = 0.5, Position = true },

        Visibility = function( i, j ) return isEven( i + j ) end
    
    },

    {
        
        Dynamic = true,     Matrix = Matrix,

        Texture = "5th/3 4x4.png",    States = { Last = 2, Rate = 0.5, Position = true },

        Visibility = function( i, j ) return isEven( i + j + 1 ) end
    
    }

}

return builder:merge(...):Load()