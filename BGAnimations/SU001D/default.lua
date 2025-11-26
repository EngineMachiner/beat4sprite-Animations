
local Superuser = beat4sprite.Modules.Superuser

local path = Superuser.graphic("ScreenWithMenuElements nebula.png")

return beat4sprite.Builder.Load { Texture = path,       Script = "Morph/Stretch.lua",       Effect = { Period = 4 } }