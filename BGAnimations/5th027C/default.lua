
local path = beat4sprite.animationPath("5th027A")

local Actor = loadfile(path) {

    { Texture = "5th/1 4x4.png",     States = 14,       Output = { Offset = false } }

}

local builder = Actor.Builder:merge {

    [2] = { States = { Position = true },       Matrix = Astro.Vector( 3, 3 ) }

}

builder[2].Types = {}          return builder:Load()