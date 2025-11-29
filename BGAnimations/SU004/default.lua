
-- TODO: Color variants, rotation variants, circular pattern.
-- TODO: diffuseshift on quads placed around centered-like with effectoffset.

-- The isFocused variable helps to wait for OnCommand to execute first and to only execute 
-- once per players.

local zoom = SCREEN_HEIGHT / 720            local n = 25        local isFocused, selected

local Superuser = beat4sprite.Modules.Superuser

local function select() selected = selected + 1         selected = selected % n end


local Background = Superuser.Background():merge {
    
    Output = { OnCommand=function(self) self:diffusealpha(0.375) end }

}

local t = beat4sprite.ActorFrame {

    OnCommand=function(self) self:zoom(zoom)    isFocused = true    selected = 0 end,

    SelectCommand=function(self)
        
        isFocused = true        local t = selected      while selected == t do select() end

    end,

    Background:Load()

}

for i = 1, n do

    local color = tapLua.Color.random()         local Builder = beat4sprite.Builder {}

    local p = beat4sprite.ActorFrame { OnCommand=function(self) self:Center():rotationz( - 45 * i ) end }

    t[#t+1] = p

    p[#p+1] = beat4sprite.Sprite {

        Texture = beat4sprite.Path .. "Resources/Superuser/circle.png",

        OnCommand=function(self)

            local i = i - 1
            
            self:init(Builder):initSprite():setsize( 128, 128 ):diffuse(color):diffusealpha(0)

            self:x( 32 + 16 * i )

        end,

        JudgmentMessageCommand=function(self, params)

            local score = params.TapNoteScore
            
            local isValid = isFocused and not score:match("Miss") 

            isValid = isValid and selected == i - 1         if not isValid then return end
            
            isFocused = false       self:GetParent():GetParent():queuecommand("Select")


            mindbox.sysPrint( self.statesDelay )

            local rate = self:statesRate() / 4

            self:stoptweening():linear( rate * 0.5 ):diffusealpha(1):linear( rate * 2 ):diffusealpha(0)

        end

    }

end

return t