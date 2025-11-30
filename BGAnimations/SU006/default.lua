
local zoom = SCREEN_HEIGHT / 720

local Superuser = beat4sprite.Modules.Superuser

local Vector = Astro.Vector         local planeAxes = Vector.planeAxes

local Background = Superuser.Background():merge {
    
    Output = { OnCommand=function(self) self:diffusealpha(0.375) end }

}

local t = beat4sprite.ActorFrame {
    
    OnCommand=function(self) self:setupDepth(140):CenterX():y(100) end,

    beat4sprite.Quad {

        OnCommand=function(self)
            
            self:setsize( 128, 128 ):rotationx(90):y( SCREEN_HEIGHT / 1.625 ):zoom(3)

            self:rotationz(45):diffuse( color("#202020") )
        
        end

    }

}

local n = 4

for j = 1, 2 do for i = 1, n do

    local x = math.random(5,8)         if math.random(2) == 2 then x = - x end
    local y = math.random(5,8)         if math.random(2) == 2 then y = - y end

    local magnitude = Astro.Vector(x, y)
    

    local Builder = beat4sprite.Builder { Effect = { Magnitude = magnitude } }

    local t2 = beat4sprite.ActorFrame {

        OnCommand=function(self)
            
            if j == 2 then self:rotationy(180) end
            
            self:rotationx(90):rotationz( 45 * i / n )

            self:init(Builder):z(-10):setEffect("spin")
        
        end

    }

    t[#t+1] = t2

    local color = tapLua.Color.random()

    for i = 1, 2 do

        t2[#t2+1] = beat4sprite.Quad {

            OnCommand=function(self)
            
                self:setsize( SCREEN_WIDTH * 10, 5 ):zoom(zoom):diffuse(color):fadeVertically(0.5)

                self:x( self:GetWidth() / 2 )       if i == 2 then self:rotationx(90) end

            end

        }

    end

end end

return beat4sprite.BaseFrame { Background:Load(), t }