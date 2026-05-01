
local path = beat4sprite.animationPath("5th030A")           local merge = tapLua.deepMerge

local input = {
    
    [2] = beat4sprite.Load("Particles/Depth/Line") {
        
        Quantity = 4,       Quantity2 = 5,

        States = 9,      Reversed = true,      Script = "Particles/Depth/Cascade",

        Group = { OnCommand=function(self) self.Sleep = 0.5       self.Sleep2 = 0.5 end }
    
    }

}

input = merge( input, ... )         return loadfile(path)(input)