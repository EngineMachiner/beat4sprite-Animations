
-- Countdown animation with masking.

local Builder = beat4sprite.Builder.Retro           local Vector = Astro.Vector

local copy = Astro.Table.Copy.deep                  local deepMerge = tapLua.deepMerge


local Texture1 = Builder.Background {

    Texture = "1st/3 4x1.png",              States = { Last = 4, Rate = 8 }

}

local Texture2 = Builder.Background {
    
    Texture = "1st/Masks/1 6x5.png",        States = { Last = 30, Rate = 2 },

    Output = { OnCommand=function(self) self:MaskSource() end }

}

local input = Texture1:input()

local Texture3 = copy(input)           Texture3.deepMerge = deepMerge

Texture3:deepMerge {

    Sprite = { OnCommand=function(self) self:setstate(1) end },
    Output = { OnCommand=function(self) self:MaskDest() end }

}

return Builder.Load { input, Texture2:input(), Texture3 }