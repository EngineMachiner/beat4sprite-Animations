
local zoom = SCREEN_HEIGHT / 720

local SoundWaves = beat4sprite.Modules.SoundWaves

local Vector = Astro.Vector         local planeAxes = Vector.planeAxes

local Background = SoundWaves.Quad() .. { OnCommand=function(self) self:Center() end }

local t = beat4sprite.ActorFrame {
    
    OnCommand=function(self) self:setupDepth(100):CenterX():y(250) end

}

for i = 1, 2 do

    t[#t+1] = beat4sprite.Quad {

        OnCommand=function(self)
            
            self:setsize( 128, 128 ):rotationx( 90 * 0.75 ):y( SCREEN_HEIGHT - 250 ):zoom(5)

            local color = i == 2 and color("#202020") or Color.White
            
            self:rotationz(45):diffuse(color)       if i == 1 then self:zoom(5.25) end
        
        end

    }

end

local n = 8

for j = 1, 2 do for i = 1, n do

    local y = math.random( 5, 20 )         if math.random(2) == 0 then y = - y end

    local magnitude = Astro.Vector { y = y }
    

    local color = tapLua.Color.random()

    local angle = i - n / 2         angle = 45 * angle / 4 - 2

    local Builder = beat4sprite.Builder { Effect = { Magnitude = magnitude } }

    local t2 = beat4sprite.ActorFrame {

        OnCommand=function(self)
            
            if j == 2 then self:rotationy(180) end          self:rotationz(angle)

            self:init(Builder):z(-1000):setEffect("spin")
        
        end

    }

    t[#t+1] = t2

    for i = 1, 2 do

        t2[#t2+1] = beat4sprite.Quad {

            OnCommand=function(self)
            
                self:setsize( SCREEN_WIDTH * 10, 20 ):zoom(zoom):diffuse(color):fadeVertically(1)

                self:x( self:GetWidth() / 2 )       if i == 2 then self:rotationx(90) end

            end

        }

    end

end end

return beat4sprite.BaseFrame { Background, t }