
local Superuser = beat4sprite.Modules.Superuser

local Background = Superuser.Background():merge {
    
    Effect = { Period = 32 },       Script = "Morph/Pulse.lua"

}

return Background:Load() .. { OnCommand=function(self) self:zoom(1.5) end }