
local path = beat4sprite.animationPath("5th024AA")          local merge = tapLua.deepMerge

local input = {

    [2] = beat4sprite.Load("Particles/Depth/Line") {
        
        Quantity = 4,       Quantity2 = 5,        Script = "Particles/Depth/Line",

        Group = { OnCommand=function(self) self.Sleep = 0.5       self.Sleep2 = 0.5 end }
    
    }

}

input = merge( input, ... )         return loadfile(path)(input)