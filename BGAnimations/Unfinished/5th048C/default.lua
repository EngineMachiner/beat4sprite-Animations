local tweaks = { { Index = 3, Remove = true } }
tweaks[2] = { Index = 4, Remove = true }
return loadfile( beat4sprite.Paths.getBGAFile("5th048A") )( tweaks )