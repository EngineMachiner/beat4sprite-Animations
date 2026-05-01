
local Vector = Astro.Vector         local merge = tapLua.deepMerge

local path = beat4sprite.animationPath("5th028A")

local Output = { OnCommand=function(self) self.Rainbow = true end }

local input = {

    { Scroll = Vector("Up"),      Output = Output,      Rate = 2 },

    {
        
        Dynamic = true,     Spiral = true,        Matrix = Vector( 4, 4 ),

        States = { Position = true,     Types = "Idle" },       Script = "Tile/Tile",

        Sprite = {
            
            OnCommand=function(self)

                local i = self:spiralIndex() - 1        local sleep = i * self:tweenRate() / 8

                self.z = self:GetZoom()         self:zoom(0):sleep(sleep):queuecommand("Spiral")
            
            end,

            SpiralCommand=function(self)
            
                local t = self:tweenRate() / 2        local z = self.z

                self:linear( t / 2 ):zoom(z):sleep( t * 7.5 )
                self:linear( t / 2 ):zoom(0):sleep( t * 7.5 )

                self:queuecommand("Spiral")
            
            end
        
        }
    
    }

}

input = merge( input, ... )            return loadfile(path)(input)