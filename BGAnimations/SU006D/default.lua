
local zoom = SCREEN_HEIGHT / 720

local Superuser = beat4sprite.Modules.Superuser         local Vector = Astro.Vector

local Background = Superuser.Background():merge {
    
    Output = { OnCommand=function(self) self:diffusealpha(0.375) end }

}

local t = beat4sprite.ActorFrame {
    
    OnCommand=function(self) self:setupDepth(175):Center():zoom(zoom) end

}

for i = 1, 2 do

    t[#t+1] = beat4sprite.Quad {

        OnCommand=function(self)
            
            self:setsize( 128, 128 ):rotationx(8):y( SCREEN_HEIGHT - 250 ):zoom(5)

            local color = i == 2 and color("#202020") or Color.White
            
            self:rotationz(45):diffuse(color)       if i == 1 then self:zoom(5.25) end
        
        end

    }

end

local n = 6

for j = 1, n do
    
    local Builder = beat4sprite.Builder {}

    t[#t+1] = beat4sprite.Quad {

        OnCommand=function(self)
        
            local x = j + 1 - n / 2     x = 250 * x     x = x - SCREEN_CENTER_X / 2 - 75

            local rate = self:statesRate()      local s = j - 1         s = s * rate

            self:init(Builder):xy( x , SCREEN_CENTER_Y + 10 )

            self:setsize( SCREEN_WIDTH * 10, 80 ):fadeVertically(1)

            self:rotationz(-90):rotationx(90):diffusealpha(0):sleep(s):queuecommand("Cycle")

        end,

        CycleCommand=function(self)

            local color = tapLua.Color.random()

            local rate = self:statesRate()          self:diffuse(color)

            self:diffusealpha(1):zoomx(0):sleep(rate)       self:linear(rate):zoomx(0.125):diffusealpha(0)
            
            self:sleep( rate * 4 ):queuecommand("Cycle")

        end

    }

end

return beat4sprite.BaseFrame { Background:Load(), t }