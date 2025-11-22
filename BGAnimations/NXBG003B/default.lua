
local Builder = beat4sprite.Builder         local color = color("#909090")

local Background = Builder.SongBackground():Load() .. {
    
    OnCommand=function(self) self:diffuse(color) end

}

local Actor = Builder {

    Texture = "NX/Star (doubleres).png",

    Sprite = {

        OnCommand=function(self)

            self:zoom(1.25)      self.Rainbow = true        self.Effect.updateTime = self.Index * 3

        end
    
    },

}

Actor = Actor:merge(...):Load()


return beat4sprite.ActorFrame { Background, Actor }