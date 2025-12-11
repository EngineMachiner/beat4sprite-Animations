
local zoom = SCREEN_HEIGHT / 720        local n = 6

local Superuser = beat4sprite.Modules.Superuser         local Vector = Astro.Vector

local Background = Superuser.Background():merge {
    
    Output = { OnCommand=function(self) self:diffusealpha(0.375) end }

}

local isFocused, selected

local function select() selected = math.random( 1, n ) end

local t = beat4sprite.ActorFrame {
    
    OnCommand=function(self)
        
        isFocused = true       select()

        self:setupDepth(175):Center():zoom(zoom)
    
    end,

    SelectCommand=function(self)
        
        isFocused = true        local t = selected      while selected == t do select() end
    
    end,

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

for i = 1, n do
    
    local Builder = beat4sprite.Builder {}

    local color = i > n / 2 and Color.Purple or Color.Red

    t[#t+1] = beat4sprite.Quad {

        OnCommand=function(self)
        
            local x = i + 1 - n / 2     x = 250 * x     x = x - SCREEN_CENTER_X / 2 - 75

            self:init(Builder):xy( x , SCREEN_CENTER_Y + 10 )

            self:setsize( SCREEN_WIDTH * 10, 80 ):fadeVertically(1)

            self:rotationz(-90):rotationx(90):diffusealpha(0)

        end,

        JudgmentMessageCommand=function( self, params )

            if params.HoldNoteScore then return end
            

            local score = params.TapNoteScore
            
            local isValid = isFocused and not score:match("Miss")

            isValid = isValid and selected == i         if not isValid then return end
            
            isFocused = false       self:GetParent():queuecommand("Select")


            local rate = self:statesRate()                  self:stoptweening():diffuse(color)

            self:diffusealpha(1):zoomx(0):linear(rate):zoomx(0.125):diffusealpha(0)

        end

    }

end

return beat4sprite.BaseFrame { Background:Load(), t }