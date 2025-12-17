
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local arrow = bga( "ScreenWithMenuElements background/OLD", "meteor-arrow.png" )
local glow = bga( "ScreenWithMenuElements background/OLD", "meteor-glow.png" )

local rate = beat4sprite.Actor.statesRate( nil, false ) * 4

-- Relative amount of meteors to create
local starriness = 0.75

-- Scale based on how much sky is visible
local nMeteors = ((_screen.h > 1080) and (_screen.h+260)/49 or _screen.w/64) * starriness

-- Definition of a meteor

local function meteor()

	local m = beat4sprite.ActorFrame {

		OnCommand=function(s)
            
            local sleep = rate * math.random() * 2

            s:onGameplay():diffusealpha(0):sleep(sleep):queuecommand("Animate")
        
        end,

		AnimateCommand=function(s)

			-- Random size between half- and full-size, weighted toward full
			s:zoom(0.6 + 0.5 * math.sqrt(math.random())):diffusealpha(1)
			-- Appear somewhere random
			:xy(math.random(_screen.w)+40,math.random(_screen.h))
			-- Move in the direction of the arrow, slowing down when
			-- it starts to burn out.  (Note: this is slightly
			-- below the 42° angle of the arrow, because I like the
			-- resultant "falling" effect.)
			:linear(0.4*rate):addx(-100):addy(100)
			:linear(0.2*rate):addx(-60):addy(60)
			-- Wait a random amount of time
			:sleep(math.random()*rate)
			-- and start again
			:queuecommand("Animate")

		end

	}

	m[#m+1] = beat4sprite.Sprite{
		Texture=arrow,
		OnCommand=function(s) s:onGameplay():blend(Blend.Add) end,
		AnimateCommand=function(s)

			-- Start partially visible
			s:stoptweening():diffusealpha(0)
			-- Come into sight
			:linear(0.15*rate):diffusealpha(0.7)
			-- Let the glow brighten (see below)
			:sleep(0.2*rate)
			-- Burn out
			:linear(0.15*rate):diffusealpha(0)

		end,
	}

	m[#m+1] = beat4sprite.Sprite{
		Texture=glow,
		OnCommand=function(s) s:onGameplay():blend(Blend.Add) end,
		AnimateCommand=function(s)

			-- Glow is almost white, with a chance of being tinted slightly.
			-- Invisible to start with.
			s:stoptweening():diffuse(HSVA(360*math.random(), 0.4*math.random(), 1, 0))
			-- Don't start to glow until the meteor's fully visible
			:sleep(0.15*rate)
			-- Flare up!
			:linear(0.2*rate):diffusealpha(1)
			-- Burn out
			:linear(0.15*rate):diffusealpha(0)

		end,
	}

	return m
end

local path = bga( "ScreenWithMenuElements background/OG", "background.mp4" )

local builder = beat4sprite.Builder.Background(path):merge {

    Sprite = { OnCommand=function(self) self:rate(0) end }

}

local t = beat4sprite.BaseFrame { builder:Load() }

-- Add meteors
for _ = 1, nMeteors do t[#t+1] = meteor() end       t[#t+1] = ClearZ

return t
