
-- TODO: Color variants, rotation variants, circular pattern.
-- TODO: diffuseshift on quads placed around centered-like with effectoffset.

local zoom = SCREEN_HEIGHT / 720

local selected = math.random(1, 8)          local isFocused

local t = beat4sprite.ActorFrame {

    OnCommand=function(self) self:zoom(zoom)    isFocused = true end,

    SelectCommand=function(self)
        
        local t = selected          while selected == t do selected = math.random(1, 8) end
    
    end,

    beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

}

for i = 1, 10 do

    local color = tapLua.Color.random()

    t[#t+1] = beat4sprite.Quad {

        OnCommand=function(self)
        
            self:setsize( 50, SCREEN_HEIGHT * 1.5 ):CenterY()

            self:diffuse(color):fadeHorizontally(0.5)


            local x = 200 * i            local r = 45
            
            if i > 4 then x = SCREEN_WIDTH * 1.75 - x      r = -45 end

            self:x(x):rotationz(r):diffusealpha(0)

        end,

        JudgmentMessageCommand=function(self, params)

            -- This executes independant from OnCommand. isFocused helps to wait for it.

            local isValid = isFocused and not params.TapNoteScore:match("Miss") 

            isValid = isValid and selected == i         if not isValid then return end
            
            self:GetParent():queuecommand("Select")


            local rate = self:statesRate() / 4

            self:stoptweening():linear(rate * 0.5):diffusealpha(1):linear(rate):diffusealpha(0)
            

        end

    }

end

return t