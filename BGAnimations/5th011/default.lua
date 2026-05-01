
local function offset(input)

    input.Output = { Offset = false }       return input

end

return beat4sprite.Builder.Retro.Load {

    offset { Texture = "5th/1 4x4.png",    States = 15 },

    offset { 
        
        Dynamic = true,

        Texture = "5th/2 4x4.png",    States = { First = 5, Last = 8, Rate = 0.5, Types = "Random" } 
    
    }

}