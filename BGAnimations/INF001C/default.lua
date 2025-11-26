
local Builder = beat4sprite.Builder         local name = ... or "INF001A"

local path = beat4sprite.animationPath(name)

local Animation = loadfile(path)() .. {

    OnCommand=function(self)

        self:effectclock("beat")

        self.beat4sprite = Builder { Colors = "RainbowBlink" }          self:setupTimers()

        self:SetUpdateFunction( function() self:playcommand("UpdateFunction") end )

    end

}

return beat4sprite.ActorFrame { Animation }