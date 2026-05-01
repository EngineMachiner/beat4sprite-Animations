
local Vector = Astro.Vector         local isEven = Astro.Math.isEven

local Background = beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

local function builder()
    
    return {

        merge = tapLua.deepMerge,

        Texture = "5th/7 4x3.png",      Dynamic = true,
        
        Scroll = Vector("Right"),       States = { Last = 12 },         Rate = 2,

        Visibility = function( x, y ) x = x + y     return isEven(x) end

    }

end

local builder = beat4sprite.Builder.Retro {

    builder():merge { Layers = { Back = Background } },

    builder():merge {
        
        Texture = "5th/7B 4x3.png",
    
        Visibility = function( x, y ) x = x + y + 1     return isEven(x) end

    }

}

return builder:merge(...):Load()