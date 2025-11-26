
local builder = beat4sprite.Builder {}

local path = beat4sprite.animationPath("INF001A")

local Animation = loadfile(path)() .. {

    OnCommand=function(self)

        local G = self:GetChild("Gradient"):init(builder)         G.Rainbow = true

        self:SetUpdateFunction( function() G:playcommand("UpdateFunction"):diffusealpha(0.25) end )

    end

}

return beat4sprite.ActorFrame { Animation }