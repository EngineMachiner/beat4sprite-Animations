
local Infinitesimal = beat4sprite.Modules.Infinitesimal

local Grid = Infinitesimal.Background { params = ... }

return beat4sprite.BaseFrame {

    beat4sprite.Builder.SongBackground():Load(),

    Grid .. { OnCommand=function(self) self:diffusealpha(0.75) end }

}