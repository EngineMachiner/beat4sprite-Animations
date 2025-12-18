
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local function file(file) return bga( "ScreenWithMenuElements background/SN2", file ) end

local rate = beat4sprite.Actor.statesRate( nil, false ) * 2

local t = beat4sprite.BaseFrame{};
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
t[#t+1] = beat4sprite.ActorFrame {
	OnCommand=function(self) self:fov(130); end;
	Def.ActorFrame{
		beat4sprite.Sprite{
			Texture = file("BG"),
			OnCommand=function(self)
				local seed = math.random(1,13);
				--seed breakdown:
				--8-13: pattern 1, increasing start color
				--2-7: pattern 2, increasing start color
				--1: rainbow
                self:onGameplay():FullScreen()
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
					self:effectperiod(120);
				end;
			end;
			AnimateCommand = function(s)
				--bump the current color to the next color in the pattern
				curPatternIdx = (curPatternIdx + 1) % #(colorPatterns[curPattern])
				s:linear(20*rate)
				:diffuse(colorPatterns[curPattern][curPatternIdx])
				:queuecommand("Animate")
			end;
		};
	};
	beat4sprite.ActorFrame{
		OnCommand=function(s) s:onGameplay():Center():spin():effectmagnitude(0,0,-4/rate) end,
		beat4sprite.Sprite{
			Texture = file("line"),
			OnCommand=function(s)
                s:onGameplay():set_use_effect_clock_for_texcoords(true)
                s:x(-550):zoomto(SCREEN_WIDTH*3,SCREEN_HEIGHT*10):rotationy(-80):customtexturerect(0,0,SCREEN_WIDTH*1.5/48,SCREEN_HEIGHT*1.5/96):blend(Blend.Add)
			    s:diffusealpha(0.4):texcoordvelocity(1.5/rate,-0.02/rate):effectperiod(4*rate)
            end,
		};
		beat4sprite.Sprite{
			Texture = file("line"),
			OnCommand=function(s)
                s:onGameplay():set_use_effect_clock_for_texcoords(true)
                s:xy(550,0):zoomto(SCREEN_WIDTH*3,SCREEN_HEIGHT*10):diffuse(ColorLightTone(color("#FFFFFF"))):rotationy(80):customtexturerect(0,0,SCREEN_WIDTH*1.5/48,SCREEN_HEIGHT*1.5/96):blend(Blend.Add)
			    s:diffusealpha(0.4):texcoordvelocity(-1.5/rate,-0.02/rate):effectperiod(4*rate)
            end,
		};
		beat4sprite.Sprite{
			Texture = file("decoration01"),
			OnCommand=function(s)
                s:onGameplay():set_use_effect_clock_for_texcoords(true)
                s:x(-330):zoomto(SCREEN_WIDTH*30,SCREEN_HEIGHT*30):diffuse(ColorLightTone(color("#FFFFFF"))):rotationy(-85):customtexturerect(0,0,SCREEN_WIDTH*1.5/48,SCREEN_HEIGHT*1.5/96):blend(Blend.Add)
			    s:diffusealpha(0.4):texcoordvelocity(0.35/rate,-0.02/rate):effectperiod(4*rate)
            end,
		};
		beat4sprite.Sprite{
			Texture = file("decoration01"),
			OnCommand=function(s)
                s:onGameplay():set_use_effect_clock_for_texcoords(true)
                s:x(330):zoomto(SCREEN_WIDTH*30,SCREEN_HEIGHT*30):diffuse(ColorLightTone(color("#FFFFFF"))):rotationy(85):customtexturerect(0,0,SCREEN_WIDTH*1.5/48,SCREEN_HEIGHT*1.5/96):blend(Blend.Add)
			    s:diffusealpha(0.4):texcoordvelocity(-0.35/rate,-0.02/rate):effectperiod(4*rate)
            end,
		};
	};
	beat4sprite.ActorFrame{
		OnCommand=function(s) s:Center() end,
		beat4sprite.Model{
			File = file("BoxBody.txt");
			OnCommand=function(s) s:onGameplay():zbuffer(true):z(-1000):zoom(40):rotationy(75):diffusealpha(0.5):spin():effectmagnitude(35/rate,10/rate,20/rate):blend(Blend.Add) end,
		};
		beat4sprite.Model{
            File = file("BoxBody.txt");
			OnCommand=function(s) s:onGameplay():zbuffer(true):z(-1000):zoom(50):rotationy(75):diffuse(ColorLightTone(color("#FFFFFF"))):spin():effectmagnitude(55/rate,30/rate,10/rate):blend(Blend.Add) end,
		};
		beat4sprite.Model{
			File = file("BoxBody.txt");
			OnCommand=function(s) s:zbuffer(true):z(-1000):zoom(70):rotationy(75):diffuse(ColorLightTone(color("#FFFFFF"))):spin():effectmagnitude(18/rate,75/rate,75/rate):blend(Blend.Add) end,
		};
		beat4sprite.Sprite{
			Texture = file("decoration02"),
			OnCommand=function(s) s:onGameplay():blend(Blend.Add):diffusealpha(0):zoom(0):queuecommand("Animate") end,
			AnimateCommand=function(s) s:x(0):diffusealpha(0):sleep(0):zoom(0):diffusealpha(0):linear(rate):zoom(1):diffusealpha(0.5):linear(1.7*rate):x(-900):diffusealpha(0):sleep(4*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture = file("decoration02"),
			OnCommand=function(s) s:onGameplay():blend(Blend.Add):rotationz(45):diffusealpha(0):zoom(0):sleep(0.4*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:xy(0,0):diffusealpha(0):sleep(0):zoom(0):diffusealpha(0):linear(rate):zoom(1):diffusealpha(0.5):linear(1.7*rate):xy(-450,-450):diffusealpha(0):sleep(4*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture = file("decoration02"),
			OnCommand=function(s) s:onGameplay():blend(Blend.Add):rotationz(90):diffusealpha(0):zoom(0):sleep(0.8*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:y(0):diffusealpha(0):sleep(0):zoom(0):diffusealpha(0):linear(rate):zoom(1):diffusealpha(0.5):linear(1.7*rate):y(-900):diffusealpha(0):sleep(4*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture = file("decoration02"),
			OnCommand=function(s) s:onGameplay():blend(Blend.Add):rotationz(136):diffusealpha(0):zoom(0):sleep(1.2*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:xy(0,0):diffusealpha(0):sleep(0):zoom(0):diffusealpha(0):linear(rate):zoom(1):diffusealpha(0.5):linear(1.7*rate):xy(450,-450):diffusealpha(0):sleep(4*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture = file("decoration02"),
			OnCommand=function(s) s:onGameplay():blend(Blend.Add):rotationz(180):diffusealpha(0):zoom(0):sleep(1.6*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:x(0):diffusealpha(0):sleep(0):zoom(0):diffusealpha(0):linear(rate):zoom(1):diffusealpha(0.5):linear(1.7*rate):x(900):diffusealpha(0):sleep(4*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture = file("decoration02"),
			OnCommand=function(s) s:onGameplay():blend(Blend.Add):rotationz(225):diffusealpha(0):zoom(0):sleep(2*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:xy(0,0):diffusealpha(0):sleep(0):zoom(0):diffusealpha(0):linear(rate):zoom(1):diffusealpha(0.5):linear(1.7*rate):xy(450,450):diffusealpha(0):sleep(4*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture = file("decoration02"),
			OnCommand=function(s) s:onGameplay():blend(Blend.Add):rotationz(270):diffusealpha(0):zoom(0):sleep(2.4*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:y(0):diffusealpha(0):sleep(0):zoom(0):diffusealpha(0):linear(rate):zoom(1):diffusealpha(0.5):linear(1.7*rate):y(900):diffusealpha(0):sleep(4*rate):queuecommand("Animate") end,
		};
		beat4sprite.Sprite{
			Texture = file("decoration02"),
			OnCommand=function(s) s:onGameplay():blend(Blend.Add):rotationz(315):diffusealpha(0):zoom(0):sleep(2.8*rate):queuecommand("Animate") end,
			AnimateCommand=function(s) s:xy(0,0):diffusealpha(0):sleep(0):zoom(0):diffusealpha(0):linear(rate):zoom(1):diffusealpha(0.5):linear(1.7*rate):xy(-450,450):diffusealpha(0):sleep(4*rate):queuecommand("Animate") end,
		};
	};
};

return t;
