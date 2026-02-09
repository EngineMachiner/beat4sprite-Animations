
local Builder = beat4sprite.Builder         local name = ... or "INF001A"

local path = beat4sprite.animationPath(name)        local builder = Builder {}

local Animation = loadfile(path)() .. {

    OnCommand=function(self)

        self:init(builder):effectclock("beat"):setupRainbowBlink()

        self:SetUpdateFunction( function() self:playcommand("UpdateFunction") end )

    end

}

return beat4sprite.BaseFrame { Animation }