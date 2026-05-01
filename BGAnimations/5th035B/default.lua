
local path = beat4sprite.animationPath("5th035A")

local merge = {
    
    Texture = "5th/5 4x4.png",

    States = { First = 5, Last = 8, Types = "Position" },       Direction = Astro.Vector("Right")

}

local Actor = loadfile(path) { [2] = merge }            local builder = Actor.Builder

builder[2].Sprite = {}          return builder:Load()