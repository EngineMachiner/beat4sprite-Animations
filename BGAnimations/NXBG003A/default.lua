
local Builder = beat4sprite.Builder         local color = color("#909090")

local Background = Builder.SongBackground():Load() .. {
    
    OnCommand=function(self) self:diffuse(color) end

}

local Actor = Builder {

    Dynamic = true,

    Texture = "NX/SStar (doubleres).png",       Blend = "add",      Alpha = 0.75,

    Sprite = {

        OnCommand=function(self)

            self:zoom(2.5)      self.Rainbow = true        self.Effect.updateTime = self.Index * 3

        end
    
    }

}

Actor = Actor:merge(...):Load()


return beat4sprite.ActorFrame { Background, Actor }