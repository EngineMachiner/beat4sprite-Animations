
local Builder = beat4sprite.Builder         local NX = beat4sprite.Modules.NX

local font = NX.font        local bga = NX.bga


local path = bga( "ScreenWithMenuElements background", "blur (stretch).png" )

local Quad = beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

local Background = Builder.Background(path):merge { Layers = { Back = Quad } }


local Actor = Builder.Load {

    Texture = font("combo marv 4x4 (doubleres).png"),           Script = "Particles/Depth/Spread",

    States = { First = 1, Last = 9 },        Colors = { Color.Purple, Color.Purple },

    Direction = Astro.Vector("Left"),

    Sprite = {

        OnCommand=function(self)

            local state = math.random(0,8)

            local d = math.random() + 1         self.statesDelay = d * 0.25 / self:GetNumStates()

            self:setstate(state):zoom(1.5)
        
        end,
    
    },

}

return beat4sprite.ActorFrame { Background:Load(), Actor }