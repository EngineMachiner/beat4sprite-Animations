
local Texture           local name = ... or "INF001A"

local path = beat4sprite.animationPath(name)

local path2 = beat4sprite.animationPath("INF001AA", "Texture.lua")

return beat4sprite.BaseFrame {

    OnCommand=function(self)

        beat4sprite.Arguments = Texture         self:AddChildFromPath(path2)        beat4sprite.Arguments = nil

    end,

    tapLua.ActorFrameTexture {

        InitCommand=function(self)
            
            if self:GetTexture() then return end            self:setSizeVector( tapLua.screenSize() )

            self:EnableAlphaBuffer(true):EnableDepthBuffer(true):Create()

            Texture = self:GetTexture()
        
        end,

        loadfile(path)()

    }

}