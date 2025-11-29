
local Superuser = beat4sprite.Modules.Superuser

local Background = Superuser.Background():merge {
    
    Output = { OnCommand=function(self) self:diffusealpha(0.375) end }

}

local t = beat4sprite.ActorFrame { OnCommand=function(self) self:Center():diffusealpha(0.5) end }

for j = 1, 5 do

    local Builder = beat4sprite.Builder { Effect = { Magnitude = Astro.Vector { z = 3 + 2 * j } } }

    local t2 = beat4sprite.ActorFrame {

        OnCommand=function(self)
            
            local rate = self:statesRate() * j

            self:init(Builder):sleep(rate):queuecommand("Spin")
        
        end,

        SpinCommand=function(self) self:setEffect("spin") end

    }

    t[#t+1] = t2

    for i = 1, 4 do

        local t3 = beat4sprite.ActorFrame {

            OnCommand=function(self) self:rotationz( 90 * i % 360 ) end

        }

        t2[#t2+1] = t3

        t3[#t3+1] = beat4sprite.Quad {

            OnCommand=function(self)

                local h = 75 * j       local x = 60 * j * 1.125
                
                self:setsize( 25, h ):x(x):fadeVertically(0.25)
            
            end

        }

    end

end
    
return beat4sprite.ActorFrame{ Background:Load(), t }