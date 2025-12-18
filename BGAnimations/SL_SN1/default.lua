
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local function file(file) return bga( "ScreenWithMenuElements background/SN1", file ) end

local rate = beat4sprite.Actor.statesRate( nil, false ) * 4

local t = beat4sprite.BaseFrame{
	FOV=130;
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
t[#t+1] = beat4sprite.ActorFrame{
	--My god you are amazing kenp.
	OnCommand=function(self)
	local seed = math.random(1,13);
		--seed breakdown:
		--8-13: pattern 1, increasing start color
		--2-7: pattern 2, increasing start color
		--1: rainbow
        self:onGameplay()
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
	Def.ActorFrame{
		beat4sprite.Sprite{
			Texture = file("_bg"),
			OnCommand=function(s) s:onGameplay():clearzbuffer(0):Center():zoom(8):spin():effectmagnitude(0,0,-1.5/rate):diffuse(color("0.75,0.75,0.75,1")) end,
		};
	};
	beat4sprite.ActorFrame{
	OnCommand=function(s) s:onGameplay():spin():effectmagnitude(-1.5/rate,2/rate,-1.5/rate):Center():zoom(0.5) end,
		beat4sprite.Model {
			File = file("SuperNOVABG.txt"),
			OnCommand=function(s) s:clearzbuffer(0):rotationx(-90):rotationz(-90):diffuse(Alpha(Color.White,0.75)):blend(Blend.Add):zoom(8) end,
		};
		Def.ActorFrame{
			OnCommand=function(s) s:zoom(20):x(SCREEN_WIDTH/2) end,
			beat4sprite.Model{
				File = file("SuperNovaBallFog (DoubleFaced).txt"),
				OnCommand=function(s) s:onGameplay():diffuse(Alpha(Color.White,0.5)):blend(Blend.Add):spin():effectmagnitude(10/rate,100/rate,10/rate) end,
			};
			beat4sprite.Model{
				File = file("SuperNovaFogBall (DoubleFaced).txt"),
				OnCommand=function(s) s:onGameplay():diffuse(Alpha(Color.White,0.5)):blend(Blend.Add):zoom(0.9):spin():effectmagnitude(10/rate,100/rate,10/rate) end,
			};
			beat4sprite.Model{
				File = file("SuperNovaBallLine (DoubleFaced).txt"),
				OnCommand=function(s) s:onGameplay():diffuse(color("0.8,0.8,0.8,1")):blend(Blend.Add):rotationx(-200):rotationz(-90):rotationy(-60):spin():effectmagnitude(100/rate,100/rate,100/rate) end,
			};
			beat4sprite.Model{
				File = file("SuperNovaBallLine (DoubleFaced).txt"),
				OnCommand=function(s) s:onGameplay():diffuse(color("0.8,0.8,0.8,1")):blend(Blend.Add):rotationx(200):rotationz(90):rotationy(60):spin():effectmagnitude(-100/rate,-100/rate,-100/rate) end,
			};
			beat4sprite.Model{
				File = file("SuperNovaBall (DoubleFaced).txt"),
				OnCommand=function(s) s:onGameplay():diffuse(color("0.6,0.6,0.6,1")):blend(Blend.Add):spin():effectmagnitude(10/rate,100/rate,10/rate) end,
			};
		};
	};
	Def.ActorFrame{
		beat4sprite.Model{
			File = file("SuperNOVALine.txt"),
			OnCommand=function(s) s:onGameplay():diffuse(color("0.4,0.4,0.4,1")):blend(Blend.Add):Center():rotationx(-200):rotationz(90):rotationy(60):zoom(12):spin():effectmagnitude(100/rate,100/rate,100/rate) end,
		};
		beat4sprite.Model{
			File = file("SuperNOVALine.txt"),
			OnCommand=function(s) s:onGameplay():diffuse(color("0.4,0.4,0.4,1")):blend(Blend.Add):Center():rotationx(200):rotationz(-90):rotationy(60):zoom(12):spin():effectmagnitude(-100/rate,-100/rate,-100/rate) end,
		};
	};
};

return t;
