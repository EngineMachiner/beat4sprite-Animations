
-- The isFocused variable helps to wait for OnCommand to execute first and to only execute 
-- once per players.

local zoom = SCREEN_HEIGHT / 720            local n = 25        local isFocused, selected

local SoundWaves = beat4sprite.Modules.SoundWaves

local function select() selected = selected + 1         selected = selected % n end


local Background = SoundWaves.Quad() .. { OnCommand=function(self) self:Center() end }

local t = beat4sprite.BaseFrame {

    OnCommand=function(self) isFocused = true    selected = 0 end,

    SelectCommand=function(self)
        
        isFocused = true        local t = selected      while selected == t do select() end

    end,

    Background

}

for i = 1, n do

    local color = tapLua.Color.random()         local Builder = beat4sprite.Builder {}

    local p = beat4sprite.ActorFrame {
        
        OnCommand=function(self) self:Center():zoom(zoom):rotationz( - 45 * i ) end
    
    }

    t[#t+1] = p

    p[#p+1] = beat4sprite.Sprite {

        Texture = "circle.png",

        OnCommand=function(self)

            self:init(Builder):initSprite()
            
            self:setsize( 128, 128 ):diffuse(color):diffusealpha(0)

            local i = i - 1         self:x( 32 + 16 * i )

        end,

        JudgmentMessageCommand=function(self, params)

            if params.HoldNoteScore then return end
            

            local score = params.TapNoteScore
            
            local isValid = isFocused and not score:match("Miss") 

            isValid = isValid and selected == i - 1         if not isValid then return end
            
            isFocused = false       self:GetParent():GetParent():queuecommand("Select")


            local rate = self:statesRate() / 4

            self:stoptweening():linear( rate * 0.5 ):diffusealpha(1):linear(rate):diffusealpha(0)

        end

    }

end

return t