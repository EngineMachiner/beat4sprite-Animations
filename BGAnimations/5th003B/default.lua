
local path = beat4sprite.animationPath("5th003A")

return loadfile(path) {

    Dynamic = true,         Mirror = false,

    Texture = "5th/5 4x3.png",          States = { First = 4,   Last = 6,   Types = "Random" }

}