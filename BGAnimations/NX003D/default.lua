
local Builder = beat4sprite.Builder

local NX = beat4sprite.Modules.NX             local graphic = NX.bga


local path = graphic("_door", "bigblackbackground (doubleres).png")

local Background = Builder.Background(path):Load()


return Builder.Load {

    Colors = { Color.White, Color.Invisible },          Effect = { Period = 2 },        Rate = 2,

    Texture = graphic("_door", "logo (doubleres).png"),          Script = "Particles/Depth/Spread",

    Sprite = {

        OnCommand=function(self)
            
            self.Effect.Offset = math.random()       self:setEffect("diffuseshift")
        
        end
    
    },

    Layers = { Back = Background }

}