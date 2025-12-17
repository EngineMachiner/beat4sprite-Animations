
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local function file(file) return bga( "ScreenWithMenuElements background/SN3", file ) end

local rate = beat4sprite.Actor.statesRate( nil, false ) * 4

local t = beat4sprite.BaseFrame{
};
local p = {
	red = color("1,0,0,0.812"),
	green = color("0,1,0,0.812"),
	blue = color("0,0,1,0.812"),
	yellow = color("1,1,0,0.812"),
	pink = color("1,0,1,0.812"),
	cyan = color("0,1,1,0.812")
}
local colorPatterns =
{
	--first pattern block: YRPBCG with different start indices
	{[0]=p.yellow, p.red, p.pink, p.blue, p.cyan, p.green},
	--second pattern block: GCBPRY with different start indices
	{[0]=p.pink, p.red, p.yellow, p.green, p.cyan, p.blue}
}
local curPattern = 1
local curPatternIdx = 0
t[#t+1] = Def.ActorFrame {
	OnCommand=function(self)
		self:fov(120);
	end;
	beat4sprite.ActorFrame{
		OnCommand=function(self)
			self:onGameplay():finishtweening()
			local seed = math.random(1,13);
			--seed breakdown:
			--8-13: pattern 1, increasing start color
			--2-7: pattern 2, increasing start color
			--1: rainbow
			if seed > 1 then
				if seed > 7 then
					curPattern = 1
					curPatternIdx = seed - 8
				else
					curPattern = 2
					curPatternIdx = seed - 2
				end
				self:diffuse(colorPatterns[curPattern][curPatternIdx])
				self:queuecommand("Animate")
			else
				self:rainbow();
				self:effectperiod(120*rate);
			end;
		end;
		AnimateCommand = function(s)
			--bump the current color to the next color in the pattern
			curPatternIdx = (curPatternIdx + 1) % #(colorPatterns[curPattern])
			s:linear(20*rate)
			:diffuse(colorPatterns[curPattern][curPatternIdx])
			:queuecommand("Animate")
		end;
		Def.Sprite{
			Texture=file("back"),
			OnCommand=function(s) s:FullScreen() end,
		};
		Def.Sprite{
			Texture=file("honeyleft"),
			OnCommand=function(s) s:halign(0):xy(SCREEN_LEFT,_screen.cy):diffuse(Alpha(Color.White,0.1)):blend(Blend.Add):zoom(1.7) end,
		};
		Def.Sprite{
			Texture=file("honeyright"),
			OnCommand=function(s) s:halign(1):xy(SCREEN_RIGHT,_screen.cy):diffuse(Alpha(Color.White,0.1)):blend(Blend.Add):zoom(1.7) end,
		};
	};
	Def.ActorFrame{
		OnCommand=function(s) s:Center():blend(Blend.Add):diffusealpha(0.6) end,
		beat4sprite.Sprite{
			Texture=file("stars"),
			OnCommand=function(self)

                self:onGameplay():set_use_effect_clock_for_texcoords(true)
                self:diffusealpha(0.3):fadetop(0.5):fadebottom(0.5):zoom(2.25)

				self:finishtweening()
				local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
				local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
				self:customtexturerect(0,0,w*1,h*1);
				self:texcoordvelocity(-0.02/rate,0);

			end;
		};
		beat4sprite.Sprite{
			Texture=file("flash"),
			OnCommand=function(s) s:onGameplay():xy(-200,-50):diffusealpha(0.5):zoom(2.25):spin():effectmagnitude(0,0,50/rate) end,
		};
		beat4sprite.Sprite{
			Texture=file("left flash"),
			OnCommand=function(s) s:onGameplay():zoom(2.25):queuecommand("Anim") end,
			AnimCommand=function(s) s:finishtweening():diffusealpha(0):sleep(4*rate):accelerate(0.2*rate):diffusealpha(1):sleep(0.5*rate):linear(rate):diffusealpha(0):queuecommand('Anim') end,
		};
		beat4sprite.Sprite{
			Texture=file("right flash"),
			OnCommand=function(s) s:onGameplay():zoom(2.25):queuecommand("Anim") end,
			AnimCommand=function(s) s:finishtweening():diffusealpha(0):sleep(2*rate):accelerate(0.2*rate):diffusealpha(1):sleep(0.5*rate):linear(rate):diffusealpha(0):sleep(2*rate):queuecommand('Anim') end,
		};
		beat4sprite.Sprite{
			Texture=file("round grid"),
			OnCommand=function(s) s:setsize(1920,1080):diffusealpha(0.5):blend(Blend.Add) end,
		};
		beat4sprite.Sprite{
			Texture=file("middle flash"),
			OnCommand=function(s) s:onGameplay():xy(_screen.cx,-240):zoomx(SCREEN_WIDTH):fadetop(0.5):fadebottom(0.5):blend(Blend.Add):queuecommand("Anim") end,
			AnimCommand=function(s) s:finishtweening():diffusealpha(0):linear(2*rate):diffusealpha(0.55):addy(SCREEN_HEIGHT):diffusealpha(0):addy(-SCREEN_HEIGHT):sleep(4*rate):queuecommand("Anim") end,
		};
	};
};

t[#t+1] = Def.ActorFrame{
	OnCommand=function(self)
		self:Center():zoom(0.4):zbuffer(false):zwrite(false)
	end;
	Def.ActorFrame{
		Def.ActorFrame{
			OnCommand=function(s) s:rotationx(12):rotationz(22) end,
			beat4sprite.Model{
				File = file("SuperNovaFogBall.txt"),
				OnCommand=function(s) s:onGameplay():diffusealpha(0.25):blend(Blend.Add):zoom(45):spin():effectmagnitude(0,80/rate,0) end,
			};
			beat4sprite.Model{
				File = file("2ndSuperNovaFogBall.txt"),
				OnCommand=function(s) s:onGameplay():diffusealpha(0.25):blend(Blend.Add):zoom(45):spin():effectmagnitude(0,-80/rate,0) end,
			};
		};
		beat4sprite.Sprite{
			Texture=file("ring.png"),
			OnCommand=function(s) s:onGameplay():blend(Blend.Add):diffusealpha(0.5):rotationx(75):rotationy(-60):zoom(5):spin():effectmagnitude(0,0,75/rate) end,
		};
		beat4sprite.Sprite{
			Texture=file("ring.png"),
			OnCommand=function(s) s:onGameplay():blend(Blend.Add):diffusealpha(0.5):rotationx(85):rotationy(-15):zoom(5):spin():effectmagnitude(0,0,75/rate) end,
		};
		beat4sprite.Sprite{
			Texture=file("ring 2.png"),
			OnCommand=function(s) s:onGameplay():blend(Blend.Add):diffusealpha(0.5):rotationx(83):rotationy(-10):zoom(5):spin():effectmagnitude(0,0,-75/rate) end,
		};
	};
};

t[#t+1] = Def.ActorFrame{
	OnCommand=function(self)
		self:fov(120);
	end;
	beat4sprite.Sprite{
		Texture=file("meter 1 (stretch).png"),
		OnCommand=function(self)
            self:onGameplay():xy(_screen.cx,_screen.cy+20):zoomto(SCREEN_WIDTH,SCREEN_HEIGHT):blend(Blend.Add):rotationz(180)
			self:finishtweening()
			local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
			local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
			self:customtexturerect(0,0,w*0.5,h*0.5);
			self:texcoordvelocity(-0.2/rate,0);
		end;
	};
	beat4sprite.Sprite{
		Texture=file("meter 1 (stretch).png"),
		OnCommand=function(self)
            self:onGameplay():xy(_screen.cx,_screen.cy-20):zoomto(SCREEN_WIDTH,SCREEN_HEIGHT):blend(Blend.Add)
			self:finishtweening()
			local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
			local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
			self:customtexturerect(0,0,w*0.5,h*0.5);
			self:texcoordvelocity(-0.2/rate,0);
		end;
	};
};

t[#t+1] = Def.ActorFrame{
	Def.Sprite{
		Texture=file("scan"),
		OnCommand=function(s) s:FullScreen():blend(Blend.Add):diffusealpha(0.25) end,
	};
}

return t;
