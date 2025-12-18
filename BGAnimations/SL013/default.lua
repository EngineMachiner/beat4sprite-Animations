
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local function Particles( texture, args )

    local builder = beat4sprite.Builder {

        Texture = bga( "_Logo", texture ),          Filter = false,

        Script = "Particles/Depth/Spread",          Rate = 2,       Quantity = 5

    }

    return builder:merge(args):Load()

end

return beat4sprite.BaseFrame {
    
    Starlight.Background(),      Particles("starlight.png"),

    Particles( "twopointzero.png", { Zoom = 2 } ) 

}