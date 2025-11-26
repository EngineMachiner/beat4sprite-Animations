
local Superuser = beat4sprite.Modules.Superuser

local Background = Superuser.Background():merge {
    
    Effect = { Period = 32 },       Script = "Morph/Wag.lua"

}

return Background:Load()