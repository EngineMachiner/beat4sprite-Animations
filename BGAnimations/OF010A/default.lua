
-- The isFocused variable helps to wait for OnCommand to execute first and to only execute 
-- once per players.

local zoom = SCREEN_HEIGHT / 720            local n = 10        local isFocused, selected

local SoundWaves = beat4sprite.Modules.SoundWaves

local function select() selected = math.random( 1, n ) end


local Background = SoundWaves.Quad() .. { OnCommand=function(self) self:Center() end }

local t = beat4sprite.BaseFrame {

    OnCommand=function(self) isFocused = true    select() end,

    SelectCommand=function(self)
        
        isFocused = true        local t = selected      while selected == t do select() end

    end,

    Background

}

for i = 1, n do

    local color = tapLua.Color.random()

    t[#t+1] = beat4sprite.Quad {

        OnCommand=function(self)
        
            local w = SCREEN_WIDTH / n          self:setsize( w, SCREEN_HEIGHT ):onGameplay()

            local i = i - 0.5                   self:x( w * i ):CenterY():zoom(zoom)

            self:diffuse(color):diffusealpha(0):fadetop(0.5)

        end,

        JudgmentMessageCommand=function(self, params)

            if params.HoldNoteScore then return end
            

            local score = params.TapNoteScore           local isValid = isFocused and not score:match("Miss") 

            isValid = isValid and selected == i         if not isValid then return end
            
            isFocused = false       self:GetParent():queuecommand("Select")


            local rate = self:statesRate()

            self:stoptweening():linear( rate * 0.5 ):diffusealpha(0.5):linear(rate):diffusealpha(0)

        end

    }

end

return t