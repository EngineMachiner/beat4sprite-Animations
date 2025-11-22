
local Builder = beat4sprite.Builder

local NX = beat4sprite.Modules.NX             local graphic = NX.bga


local path = graphic("_door", "bigblackbackground (doubleres).png")

local builder = { Scroll = Astro.Vector("UpRight"),     Rate = 2 }

return Builder.Background(path):merge(builder):Load()