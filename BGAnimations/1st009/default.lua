
-- Male red dancers and green cogs background.

local animationPath = beat4sprite.animationPath("1st004")

local input = {

    { Texture = "1st/4 4x1.png" },

    { Texture = "1st/3 4x2.png",        States = { Last = 8 },      Colors = Color.Red }

}

return loadfile(animationPath)(input)