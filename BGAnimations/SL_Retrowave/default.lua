
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local function texture(file) return Starlight.bga( "ScreenWithMenuElements background/Retrowave", file ) end

local rate = beat4sprite.Actor.statesRate( nil, false ) * 4

return beat4sprite.BaseFrame {

    OnCommand=function(s) s:fov(90):Center() end,

    Starlight.Background(),
	
    Def.Quad{
        OnCommand=function(s) s:setsize(SCREEN_WIDTH,SCREEN_HEIGHT):y(100):valign(1)
            :diffuse(color("#cd22aa")):diffusetopedge(color("#bba500")):blend(Blend.Multiply)
        end,
    },
    Def.Quad{
        OnCommand=function(s) s:setsize(SCREEN_WIDTH,SCREEN_WIDTH/2):y(100):valign(1):MaskSource() end,
    },
    Def.Quad{
        OnCommand=function(s) s:setsize(SCREEN_WIDTH,SCREEN_HEIGHT):valign(0):ztestmode('ZTestMode_WriteOnFail'):MaskDest()
            :diffuse(color("#0b0c31")):diffusebottomedge(color("#761959")) end,
    },
    beat4sprite.ActorFrame{
        OnCommand=function(s) s:onGameplay():queuecommand("Anim") end,
        AnimCommand=function(s) s:sleep(8*rate):diffusealpha(0.7):xy(2,-2):sleep(0.05*rate):diffusealpha(0.9):xy(0,0):sleep(0.05*rate):diffusealpha(0.4):xy(-2,2):sleep(0.05*rate):diffusealpha(1):xy(0,0):sleep(5*rate)
            :sleep(0.05*rate):diffusealpha(0.7):xy(2,2):sleep(0.05*rate):diffusealpha(0.3):xy(-2,-2):sleep(0.05*rate):diffusealpha(1):xy(0,0):queuecommand("Anim") end,
        beat4sprite.Sprite{
            Texture = bga( "ScreenWithMenuElements background/SN2", "line" ),
            OnCommand=function(s)
                s:onGameplay():set_use_effect_clock_for_texcoords(true)
                :ztestmode('ZTestMode_WriteOnFail'):MaskDest()
                :zoomto(SCREEN_WIDTH*1.5,SCREEN_HEIGHT*1.5):rotationx(-82):customtexturerect(0,0,SCREEN_WIDTH*1.5/48,SCREEN_HEIGHT*1.5/96)
                :texcoordvelocity(0.7/rate,0):effectperiod(4*rate):blend(Blend.Add):diffuse(color("0.5,0.2,0.7,1"))
            end,
        },
        beat4sprite.Sprite{
            Texture = bga( "ScreenWithMenuElements background/SN2", "line" ),
            OnCommand=function(s)
                s:onGameplay():set_use_effect_clock_for_texcoords(true)
                :ztestmode('ZTestMode_WriteOnFail'):MaskDest()
                :zoomto(SCREEN_WIDTH*1.5,SCREEN_HEIGHT*1.5):rotationx(-82):customtexturerect(0,0,SCREEN_WIDTH*1.5/48,SCREEN_HEIGHT*1.5/96):xy(1,-1)
                :texcoordvelocity(0.7/rate,0):effectperiod(4*rate):blend(Blend.Add):diffusealpha(0.1)
            end,
        },
    },
    Def.ActorFrame{
        OnCommand=function(s)
            s:pulse():effectmagnitude(1,0.98,0.98):effectclock('beat'):effectoffset(0.2):effecttiming(0.6*2,0.2*2,0.2*2,0)
        end,
        beat4sprite.Sprite{
            Texture = texture("circle"),
            OnCommand=function(s) s:onGameplay():xy(1,-202):bob():effectmagnitude(0,20,0):effectperiod(50*rate):blend(Blend.Add) end,
        },
        beat4sprite.Sprite{
            Texture = texture("circle"),
            OnCommand=function(s) s:onGameplay():y(-200):bob():effectmagnitude(0,20,0):effectperiod(50*rate) end,
        },
    },
    Def.Sprite{
        Texture = texture("mountains"),
        OnCommand=function(s) s:valign(1):y(100) end,
    },
    Def.ActorFrame{
        OnCommand=function(s)
            s:diffuseshift():effectcolor1(Alpha(Color.White,0.5)):effectcolor2(Alpha(Color.White,0.2)):effectclock('beat'):effectoffset(0.2):effecttiming(0.6*2,0.2*2,0.2*2,0)
        end,
        Def.Sprite{
            Texture = texture("mountain glow"),
            OnCommand=function(s) s:valign(1):y(100) end,
        },
    };
    Def.Sprite{
        Texture = texture("midline"),
        OnCommand=function(s) s:y(100):blend(Blend.Add):diffuse(color("#d626b7")):diffusealpha(1) end,
    },
    beat4sprite.Sprite{
        Texture = texture("line1"),
        OnCommand=function(s) s:onGameplay():setsize(SCREEN_WIDTH,SCREEN_HEIGHT):y(100):rotationx(-82):blend(Blend.Add):diffuse(color("#d626b7")):diffusealpha(0.5):cropright(1):queuecommand("Anim") end,
        AnimCommand=function(s) s:cropright(1):cropleft(0):sleep(5*rate):decelerate(0.5*rate):cropright(0):decelerate(0.5*rate):cropleft(1):queuecommand("Anim") end,
    },
    beat4sprite.Sprite{
        Texture = texture("line1"),
        OnCommand=function(s) s:onGameplay():setsize(SCREEN_WIDTH,SCREEN_HEIGHT):y(110):rotationx(-82):blend(Blend.Add):diffusealpha(0.8):cropright(1):queuecommand("Anim") end,
        AnimCommand=function(s) s:cropright(1):cropleft(0):sleep(5*rate):decelerate(0.5*rate):cropright(0):decelerate(0.5*rate):cropleft(1):queuecommand("Anim") end,
    },
    beat4sprite.Sprite{
        Texture = texture("line1"),
        OnCommand=function(s) s:onGameplay():setsize(SCREEN_WIDTH,SCREEN_HEIGHT):y(80):rotationx(-87):zoomy(0.8):blend(Blend.Add):diffuse(color("#d626b7")):diffusealpha(0.5):cropright(1):queuecommand("Anim") end,
        AnimCommand=function(s) s:cropright(1):cropleft(0):sleep(7*rate):decelerate(0.5*rate):cropright(0):decelerate(0.5*rate):cropleft(1):queuecommand("Anim") end,
    },
    Def.Sprite{
        Texture = texture("bottom glow"),
        OnCommand=function(s) s:setsize(SCREEN_WIDTH,SCREEN_HEIGHT):diffuse(color("#f86551")):diffusealpha(0.3) end,
    }
}