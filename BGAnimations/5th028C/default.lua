
local merge = tapLua.deepMerge

local path = beat4sprite.animationPath("5th028B")

local input = {
    
    [2] = {
        
        Whirl = true,       States = { Types = { "Idle", "Position" } },

        Script = "Particles/Depth/Helix"
    
    }

}

input = merge( input, ... )             local Actor = loadfile(path)(input)

local builder = Actor.Builder           builder[2].Sprite = {}                  

return builder:Load()