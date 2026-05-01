
local path = beat4sprite.animationPath("5th024AC")          local merge = tapLua.deepMerge

local input = {
    
    [2] = {
        
        Texture = "5th/5 4x3.png",
        
        States = 7,         Colors = { color("#808080"), Color.White }
    
    }

}

input = merge( input, ... )         return loadfile(path)(input)