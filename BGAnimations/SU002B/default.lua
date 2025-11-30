
-- The isFocused variable helps to wait for OnCommand to execute first and to only execute 
-- once per players.

local zoom = SCREEN_HEIGHT / 720            local n = 10        local isFocused, selected

local Superuser = beat4sprite.Modules.Superuser

local function select() selected = selected + 1         selected = selected % n end


local Background = Superuser.Background():merge {
    
    Output = { OnCommand=function(self) self:diffusealpha(0.375) end }

}

local t = beat4sprite.BaseFrame {

    OnCommand=function(self) isFocused = true    selected = 0 end,

    SelectCommand=function(self) isFocused = true        select() end,

    Background:Load()

}

for i = 1, n do

    local color = i > n / 2 and Color.Purple or Color.Red

    t[#t+1] = beat4sprite.Quad {

        OnCommand=function(self)
        
            self:onGameplay():setsize( 25, SCREEN_WIDTH ):CenterY():zoom(zoom)

            self:diffuse(color):diffusealpha(0):fadeHorizontally(0.475)


            local isFlipped = i > n / 2         local i = isFlipped and i - n / 2 or i

            local x = 200 * i                   local r = 45
            
            if isFlipped then x = SCREEN_WIDTH - x      r = - 45 end

            self:x(x):rotationz(r)

        end,

        JudgmentMessageCommand=function(self, params)

            local score = params.TapNoteScore
            
            local isValid = isFocused and not score:match("Miss")

            isValid = isValid and selected == i - 1         if not isValid then return end
            
            isFocused = false       self:GetParent():queuecommand("Select")


            local rate = self:statesRate()

            self:stoptweening():linear( rate * 0.5 ):diffusealpha(1):linear( rate * 2 ):diffusealpha(0)

        end

    }

end

return t
