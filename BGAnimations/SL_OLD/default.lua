
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local function texture(file) return bga( "ScreenWithMenuElements background/OLD", file ) end

local rate = beat4sprite.Actor.statesRate( nil, false ) * 4

-- Relative amount of meteors to create
local starriness = 0.75

-- Scale based on how much sky is visible
local nMeteors = ((_screen.h > 720) and (_screen.h+260)/49 or _screen.w/64) * starriness

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
		Texture = texture("meteor-arrow.png"),
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
		Texture = texture("meteor-glow.png"),
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


--
-- Screen ActorFrame starts here
--

local t = beat4sprite.BaseFrame {}

-- Diagonal of the screen (= diameter of the background rotation circle)
local d = math.sqrt(_screen.h^2 + _screen.w^2)

t[#t+1] = beat4sprite.Sprite {
	Texture = texture("bg.png"),
	-- Make sure the sky fills the entire screen, with room to rotate
	OnCommand = function(s) s:onGameplay():scaletocover(0,0,d,d):Center():queuecommand("Animate") end,
	AnimateCommand = function(s) s:rotationz(0):linear(720*rate):rotationz(360):queuecommand("Animate") end,
}

-- Add meteors
for _ = 1, nMeteors do
	t[#t+1] = meteor()
end

t[#t+1] = beat4sprite.Sprite{
	Texture = texture("violetwave"),
	-- Continually scrolling texture
	OnCommand=function(s)
		local w = SCREEN_HEIGHT*1.333333 / s:GetWidth();
        s:onGameplay():set_use_effect_clock_for_texcoords(true)
        s:customtexturerect(0,0,w*1.5,1):zoomtowidth(_screen.w)
		s:xy(_screen.cx,_screen.cy-215):texcoordvelocity(0.1/rate,0)
	end,
}

t[#t+1] = beat4sprite.Sprite{
	Texture = texture("bluewave"),
	-- Also continually scrolling
	OnCommand = function(s)
		local w = SCREEN_HEIGHT*1.333333 / s:GetWidth();
        s:onGameplay():set_use_effect_clock_for_texcoords(true)
        s:customtexturerect(0,0,w*1.5,1):zoomtowidth(_screen.w)
		s:diffusealpha(0.9)
		:valign(1):xy(_screen.cx,_screen.cy+170)
		:texcoordvelocity(0.2/rate,0)
	end,
}

t[#t+1] = Def.Sprite{
	Texture = texture("glow.png"),
	OnCommand = function(s) s:zoomtowidth(_screen.w)
		:valign(1):xy(_screen.cx,_screen.cy+130)
	end,
}

t[#t+1] = Def.Sprite{
	Texture = texture("ground.png"),
	-- Make sure the ground graphic covers the entire ground :)
	OnCommand = function(s) s:valign(0)
		:zoomto(_screen.w,_screen.cy-130)
		:xy(_screen.cx,_screen.cy+130)
	end,
}

-- Mask for rotating reflection
t[#t+1] = Def.Quad {
	OnCommand = function(s) s:stretchto(0,0,_screen.w,_screen.cy+130):MaskSource(true) end,
}

-- Rotating reflection
t[#t+1] = beat4sprite.Sprite{
	Texture=texture("bg.png"),
	OnCommand = function(s)
        
        s:onGameplay():scaletocover(0,0,d,-d):xy(_screen.cx,_screen.cy+260):diffusealpha(0.15):MaskDest()
        s:queuecommand("Animate")
    
    end,
	AnimateCommand = function(s) s:rotationz(0):linear(720*rate):rotationz(360):queuecommand("Animate") end,
}

t[#t+1] = ClearZ


-- Ring animations came from the previous themer
t[#t+1] = beat4sprite.Sprite {
	Texture=texture("ring1.png"),
	OnCommand=function(s) s:onGameplay():diffusealpha(0):rotationz(0):zoom(0.5)
		:xy(math.random(_screen.w),math.random(_screen.h))
		:sleep((math.random(2)+1)*rate)
		:linear(0.5*rate):rotationz(180):zoom(0.6):diffusealpha(0.5)
		:decelerate(0.5*rate):rotationz(math.random(89)+270):zoom(0.65)
		:diffusealpha(0):queuecommand("On")
	end,
}
t[#t+1] = beat4sprite.Sprite {
	Texture = texture("ring2.png"),
	OnCommand=function(s) s:onGameplay():diffusealpha(0):rotationz(0):zoom(0.5)
		:xy(math.random(_screen.w),math.random(_screen.h))
		:sleep(math.random(3)*rate):linear(0.5*rate):rotationz(180)
		:zoom(0.6):diffusealpha(0.5):decelerate(0.5*rate)
		:rotationz(math.random(89)+270):zoom(0.65)
		:diffusealpha(0):queuecommand("On")
	end,
}
t[#t+1] = beat4sprite.Sprite {
	Texture = texture("ring3.png"),
	OnCommand=function(s) s:onGameplay():diffusealpha(0):rotationz(0):zoom(0.5)
		:xy(math.random(_screen.w),math.random(_screen.h))
		:sleep(math.random(2)*rate):linear(0.5*rate):rotationz(180)
		:zoom(0.6):diffusealpha(0.5):decelerate(0.5*rate)
		:rotationz(math.random(89)+270):zoom(0.65)
		:diffusealpha(0):queuecommand("On")
	end,
}
t[#t+1] = beat4sprite.Sprite{
	Texture = texture("ring4.png"),
	OnCommand=function(s) s:diffusealpha(0):rotationz(0):zoom(0.5)
		:xy(math.random(_screen.w),math.random(_screen.h))
		:sleep((math.random(3)+1)*rate):linear(0.5*rate):rotationz(180)
		:zoom(0.6):diffusealpha(0.5):decelerate(0.5*rate)
		:rotationz(math.random(89)+270):zoom(0.65)
		:diffusealpha(0):queuecommand("On")
	end,
}

return t
