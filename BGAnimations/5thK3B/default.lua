
local path = beat4sprite.animationPath("5thK3A")

local builder = loadfile(path)().Builder

return beat4sprite.Builder.Retro.Load {

    builder:input(),

    {
        
        Dynamic = true,

        Texture = "5th/5 4x3.png",        States = { Last = 3, Position = true }
    
    }

}