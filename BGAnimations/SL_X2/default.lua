
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local function file(file) return bga( "ScreenWithMenuElements background/X2", file ) end

local rate = beat4sprite.Actor.statesRate( nil, false ) * 2

return beat4sprite.BaseFrame{
	Def.Sprite{
		 Texture=file("bg.png"),
		 OnCommand=function(s) s:valign(1):xy(_screen.cx,SCREEN_BOTTOM):setsize(SCREEN_WIDTH,744) end,
	};
	Def.Sprite{
		Texture=file("bg top.png"),
		OnCommand=function(s) s:valign(0):xy(_screen.cx,SCREEN_TOP):zoom(1.5) end,
	};
	beat4sprite.Sprite{
		Texture=file("hills2 (stretch)"),
		OnCommand=function(s) s:onGameplay():set_use_effect_clock_for_texcoords(true)
            :xy(_screen.cx,_screen.cy-308):zoom(1.5)
			:customtexturerect(0,0,1,1):texcoordvelocity(0.2/rate,0)
		end,
	};
	beat4sprite.Sprite{
		Texture=file("hill2 hl (stretch)"),
		OnCommand=function(s) s:onGameplay():set_use_effect_clock_for_texcoords(true)
            :xy(_screen.cx,_screen.cy-338):zoom(1.5)
			:customtexturerect(0,0,1,1):texcoordvelocity(0.2/rate,0)
		end,
	};
	beat4sprite.Sprite{
		Texture=file("hills1 (stretch)"),
		OnCommand=function(s) s:onGameplay():set_use_effect_clock_for_texcoords(true)
            :xy(_screen.cx,_screen.cy-308):diffusealpha(0.5):zoom(1.5)
			:customtexturerect(0,0,1.5,1):texcoordvelocity(0.2/rate,0)
		end,
	};

	Def.ActorFrame{
		OnCommand=function(s) s:zoom(1.5):xy(-400,-200) end,
		--ripples-------------------
		beat4sprite.Sprite{
		Texture=file("bgrp01"),
			OnCommand=function(s)
                s:onGameplay():zoom(1):xy(_screen.cx,_screen.cy+180):blend(Blend.Add):diffusealpha(0)
			    s:queuecommand("Animate")
            end,
			AnimateCommand=function(s) s:finishtweening():zoom(1):diffusealpha(0):sleep(0.5*rate):linear(0.65*rate):zoom(1.3)
				:diffusealpha(0.5):decelerate(1.5*rate):zoom(1.6):diffusealpha(0):sleep(5.5*rate):queuecommand("Animate")
			end,
		};
		beat4sprite.Sprite{
			Texture=file("rp00A1"),
			OnCommand=function(s)
                s:onGameplay():zoom(0.6):xy(_screen.cx,_screen.cy+180):blend(Blend.Add):diffusealpha(0)
			    s:queuecommand("Animate")
            end,
			AnimateCommand=function(s) s:finishtweening():zoom(0.6):diffusealpha(0):rotationz(0):sleep(0.5*rate)
				:linear(0.65*rate):rotationz(230):zoom(0.9):diffusealpha(0.2):decelerate(1.5*rate):rotationz(490):zoom(1.2)
				:diffusealpha(0):sleep(5.5*rate):queuecommand("Animate")
			end,
		};
		beat4sprite.Sprite{
			Texture=file("bgrp02"),
			OnCommand=function(s)
                s:onGameplay():zoom(1):xy(_screen.cx+280,_screen.cy-180):blend(Blend.Add):diffusealpha(0)
			    s:queuecommand("Animate")
            end,
			AnimateCommand=function(s)
                s:zoom(1):diffusealpha(0):sleep(2.5*rate):linear(0.65*rate):zoom(1.2):diffusealpha(1)
				:decelerate(1.5*rate):zoom(1.4):diffusealpha(0):sleep(9.5*rate):queuecommand("Animate")
			end,
		};
		beat4sprite.Sprite{
			Texture=file("bgrp03"),
			OnCommand=function(s) s:onGameplay():zoom(1):xy(_screen.cx+280,_screen.cy-180):blend(Blend.Add):diffusealpha(0):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1):diffusealpha(0):sleep(3.5*rate):linear(0.65*rate):zoom(1.4):diffusealpha(0.5)
				:decelerate(1.5*rate):zoom(1.8):diffusealpha(0):sleep(8.5*rate):queuecommand("Animate")
			end,
		};
		beat4sprite.Sprite{
			Texture=file("bgrp03"),
			OnCommand=function(s) s:onGameplay():zoom(1):xy(_screen.cx-280,_screen.cy-50):blend(Blend.Add):diffusealpha(0):sleep(1.2*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1):diffusealpha(0):linear(0.65*rate):zoom(1.4):diffusealpha(1):decelerate(1.5*rate):zoom(1.8*rate):diffusealpha(0):sleep(12*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("ripple00A"),
			OnCommand=function(s) s:zoom(1):xy(_screen.cx+500,_screen.cy):blend(Blend.Add):diffusealpha(0):sleep(3.5*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1):diffusealpha(0):linear(0.65*rate):zoom(1.2):diffusealpha(0.3):decelerate(1.5*rate):zoom(1.5):diffusealpha(0):sleep(6*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("rp00A1"),
			OnCommand=function(s) s:zoom(1):xy(_screen.cx+500,_screen.cy):blend(Blend.Add):diffusealpha(0):sleep(3.5*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1):diffusealpha(0):rotationz(0):linear(0.65*rate):rotationz(230):zoom(1.35):diffusealpha(0.2):decelerate(1.5*rate):rotationz(490):zoom(1.7):diffusealpha(0):sleep(6*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("ripple00B"),
			OnCommand=function(s) s:zoom(1):xy(_screen.cx-100,_screen.cy+90):blend(Blend.Add):diffusealpha(0):sleep(7.5*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1):diffusealpha(0):linear(0.65*rate):zoom(1.15):diffusealpha(0.5):decelerate(1.5*rate):zoom(1.3):diffusealpha(0):sleep(12*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("rp00A1"),
			OnCommand=function(s) s:zoom(1):xy(_screen.cx-100,_screen.cy+90):blend(Blend.Add):diffusealpha(0):sleep(7.5*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1):diffusealpha(0):rotationz(0):linear(0.65*rate):rotationz(230):zoom(1.35):diffusealpha(0.2):decelerate(1.5*rate):rotationz(490):zoom(1.5):diffusealpha(0):sleep(12*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("ripple00B"),
			OnCommand=function(s) s:zoom(1):xy(_screen.cx-470,_screen.cy-250):diffuse(Alpha(Color.Green,0)):blend(Blend.Add):sleep(0.5*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1):diffusealpha(0):linear(0.65*rate):zoom(1.4):diffusealpha(0.5):decelerate(1.5*rate):zoom(1.8):diffusealpha(0):sleep(6*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("rp00A1"),
			OnCommand=function(s) s:zoom(1):xy(_screen.cx-470,_screen.cy-250):blend(Blend.Add):diffusealpha(0):sleep(0.5*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1):diffusealpha(0):rotationz(0):linear(0.65*rate):rotationz(230):zoom(1.4):diffusealpha(0.2):decelerate(1.5*rate):rotationz(490):zoom(1.8):diffusealpha(0):sleep(6*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("ripple00B"),
			OnCommand=function(s) s:zoom(1):xy(_screen.cx+470,_screen.cy+250):diffuse(Alpha(Color.Green,0)):blend(Blend.Add):sleep(4.2*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1):diffusealpha(0):linear(0.65*rate):zoom(1.4):diffusealpha(0.5):decelerate(1.5*rate):zoom(1.8):diffusealpha(0):sleep(6*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("rp00A1"),
			OnCommand=function(s) s:zoom(1):xy(_screen.cx+470,_screen.cy+250):blend(Blend.Add):diffusealpha(0):sleep(4.2*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1):diffusealpha(0):rotationz(0):linear(0.65*rate):rotationz(230):zoom(1.4):diffusealpha(0.2):decelerate(1.5*rate):rotationz(490):zoom(1.8):diffusealpha(0):sleep(6*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("ripple00C"),
			OnCommand=function(s) s:zoom(1):x(_screen.cx+560,_screen.cy+250):blend(Blend.Add):diffusealpha(0):sleep(6.8*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1):diffusealpha(0):linear(0.65*rate):zoom(1.15):diffusealpha(0.5):decelerate(1.5*rate):zoom(1.3):diffusealpha(0):sleep(12*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("rp00A1"),
			OnCommand=function(s) s:zoom(0.6):xy(_screen.cx+560,_screen.cy+250):blend(Blend.Add):diffusealpha(0):sleep(6.8*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(0.6):diffusealpha(0):rotationz(0):linear(0.65*rate):rotationz(230):zoom(0.7):diffusealpha(0.2):decelerate(1.5*rate):rotationz(490):zoom(0.9):diffusealpha(0):sleep(12*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("ripple00C"),
			OnCommand=function(s) s:zoom(1):xy(_screen.cx-450,_screen.cy+150):blend(Blend.Add):diffusealpha(0):sleep(1.8*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1):diffusealpha(0):linear(0.65*rate):zoom(1.15):diffusealpha(0.5):decelerate(1.5*rate):zoom(1.3):diffusealpha(0):sleep(6*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("rp00A1"),
			OnCommand=function(s) s:zoom(0.6):xy(_screen.cx-450,_screen.cy+150):blend(Blend.Add):diffusealpha(0):sleep(1.8*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(0.6):diffusealpha(0):rotationz(0):linear(0.65*rate):rotationz(230):zoom(0.7):diffusealpha(0.2):decelerate(1.5*rate):rotationz(490):zoom(0.9):diffusealpha(0):sleep(6*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("ripple00C"),
			OnCommand=function(s) s:zoom(1):xy(_screen.cx-180,_screen.cy-190):blend(Blend.Add):diffusealpha(0):sleep(0.8*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1):diffusealpha(0):linear(0.65*rate):zoom(1.15):diffusealpha(0.5):decelerate(1.5*rate):zoom(1.3):diffusealpha(0):sleep(5*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("rp00A1"),
			OnCommand=function(s) s:zoom(0.6):xy(_screen.cx-180,_screen.cy-190):blend(Blend.Add):diffusealpha(0):sleep(0.8*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(0.6):diffusealpha(0):rotationz(0):linear(0.65*rate):rotationz(230):zoom(0.7):diffusealpha(0.2):decelerate(1.5*rate):rotationz(490):zoom(0.9):diffusealpha(0):sleep(5*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("rp001"),
			OnCommand=function(s) s:zoom(1.5):xy(_screen.cx+200,_screen.cy+200):blend(Blend.Add):diffusealpha(0):sleep(11.5*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1.5):diffusealpha(0):linear(0.65*rate):zoom(1.65):diffusealpha(0.5):decelerate(1.5*rate):zoom(1.8):diffusealpha(0):sleep(12*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("rp00A1"),
			OnCommand=function(s) s:zoom(1.5):xy(_screen.cx+200,_screen.cy+200):blend(Blend.Add):diffusealpha(0):sleep(11.5*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1.5):diffusealpha(0):rotationz(0):linear(0.65*rate):rotationz(230):zoom(2.05):diffusealpha(0.2):decelerate(1.5*rate):rotationz(490):zoom(2.8):diffusealpha(0):sleep(12*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("rp001"),
			OnCommand=function(s) s:zoom(1):xy(_screen.cx+410,_screen.cy-200):blend(Blend.Add):diffusealpha(0):sleep(2.5*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1):diffusealpha(0):linear(0.65*rate):zoom(1.15):diffusealpha(0.5):decelerate(1.5*rate):zoom(1.3):diffusealpha(0):sleep(12*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("rp00A1"),
			OnCommand=function(s) s:zoom(1):xy(_screen.cx+410,_screen.cy-200):blend(Blend.Add):diffusealpha(0):sleep(2.5*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1):diffusealpha(0):rotationz(0):linear(0.65*rate):rotationz(230):zoom(1.15):diffusealpha(0.2):decelerate(1.5*rate):rotationz(490):zoom(1.3):diffusealpha(0):sleep(12*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("rp001"),
			OnCommand=function(s) s:zoom(1.6):xy(_screen.cx-450,_screen.cy+170):blend(Blend.Add):diffusealpha(0):sleep(4.5*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1.6):diffusealpha(0):linear(0.65*rate):zoom(1.85):diffusealpha(0.5):decelerate(1.5*rate):zoom(2.0):diffusealpha(0):sleep(12*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("rp00A1"),
			OnCommand=function(s) s:zoom(1.6):xy(_screen.cx-450,_screen.cy+170):blend(Blend.Add):diffusealpha(0):sleep(4.5*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1.6):diffusealpha(0):rotationz(0):linear(0.65*rate):rotationz(230):zoom(1.85):diffusealpha(0.2):decelerate(1.5*rate):rotationz(490):zoom(2.0):diffusealpha(0):sleep(12*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("rpshadle001"),
			OnCommand=function(s) s:zoom(1):xy(_screen.cx+370,_screen.cy+220):blend(Blend.Add):diffusealpha(0):sleep(0.8*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(1):diffusealpha(0):linear(0.33*rate):zoom(1.15):diffusealpha(1):decelerate(0.55*rate):zoom(1.3):diffusealpha(0):sleep(7*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("rpshadle001"),
			OnCommand=function(s) s:zoom(1):xy(_screen.cx-400,_screen.cy+260):blend(Blend.Add):diffusealpha(0):sleep(2.8*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:zoom(0.55):diffusealpha(0):linear(0.33*rate):zoom(0.75):diffusealpha(1):decelerate(0.55*rate):zoom(0.95):diffusealpha(0):sleep(7*rate):queuecommand("Animate") end,
		};
		--bubbles-----------------

		beat4sprite.Sprite{
			Texture=file("BubbleTileA"),
			OnCommand=function(s) s:zoom(0.5):xy(_screen.cx-270,SCREEN_BOTTOM+20):blend(Blend.Add):sleep(2.8):queuecommand("Animate") end,
			AnimateCommand=function(s) s:y(SCREEN_BOTTOM+20):accelerate(2.5):y(SCREEN_TOP-20):sleep(5):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("BubbleTileB"),
			OnCommand=function(s) s:zoom(0.5):xy(_screen.cx+210,SCREEN_BOTTOM+20):blend(Blend.Add):sleep(1.8):queuecommand("Animate") end,
			AnimateCommand=function(s) s:y(SCREEN_BOTTOM+20):accelerate(3.5):y(SCREEN_TOP-20):sleep(8):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("BubbleTileB"),
			OnCommand=function(s) s:zoom(0.3):xy(_screen.cx+140,SCREEN_BOTTOM+20):blend(Blend.Add):sleep(6.8):queuecommand("Animate") end,
			AnimateCommand=function(s) s:y(SCREEN_BOTTOM+20):accelerate(3.5):y(SCREEN_TOP-20):sleep(9):queuecommand("Animate") end,
		};
		--lines--------------------------

		beat4sprite.Sprite{
			Texture=file("WaveRepeatA2"),
			OnCommand=function(s) s:zoom(1):diffusealpha(0):sleep(3.2):queuecommand("Animate") end,
			AnimateCommand=function(s) s:xy(_screen.cx-160,_screen.cy-290):zoomx(1.5):diffusealpha(0):linear(0.99*rate):diffusealpha(0.33):x(_screen.cx-140):decelerate(1.65*rate):diffusealpha(0):x(_screen.cx-120):sleep(15):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture=file("WaveRepeatA3"),
			OnCommand=function(s) s:zoom(1):diffusealpha(0):sleep(7.2):queuecommand("Animate") end,
			AnimateCommand=function(s) s:xy(_screen.cx+200,_screen.cy-310):zoom(0.75):diffusealpha(0):linear(0.99*rate):diffusealpha(0.33):x(_screen.cx+250):zoomx(0.95):decelerate(1.65*rate):diffusealpha(0):x(_screen.cx+300):zoomx(1.15):sleep(15):queuecommand("Animate") end,
		};
	};
};
