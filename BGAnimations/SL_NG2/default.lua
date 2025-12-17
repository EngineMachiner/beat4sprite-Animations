
local Starlight = beat4sprite.Modules.Starlight         local bga = Starlight.bga

local light = bga( "ScreenWithMenuElements background/NG2", "light.png" )
local nodeBG = bga( "ScreenWithMenuElements background/NG2", "Node-BG.png" )

local rate = beat4sprite.Actor.statesRate( nil, false )

return beat4sprite.BaseFrame {
    Def.Quad {
        OnCommand=function(self)
            self:FullScreen():diffusetopedge(color("#303030")):diffusebottomedge(color("#808080"));
        end;
    };
    Def.Quad {
        OnCommand=function(s)
            s:CenterX():y(_screen.cy+SCREEN_HEIGHT/3):setsize(SCREEN_WIDTH,SCREEN_HEIGHT/2):fadetop(0.25)
            s:diffusetopedge(color("#f0f0f0")):diffusebottomedge(color("#cccccc")):diffusealpha(0.5)
        end,
    };
    Def.Sprite{
        Texture=light,
        OnCommand=function(s) s:FullScreen():diffusealpha(0.25) end, 
    };
    Def.ActorFrame{

        OnCommand=function(s)

            s:effectclock("beat"):spin():effectmagnitude( 0, 0, - rate )
        
        end,

        Def.Sprite{
            Texture=nodeBG,
            OnCommand=function(s)
                s:effectclock("beat"):setsize(1920*2,1080*2):xy(_screen.cx-200,_screen.cy+40)
                s:diffusealpha(0.2):pulse():effectperiod( rate * 4 * 50 )
            end,
        };

    };
    Def.ActorFrame{

        OnCommand=function(s)
            s:effectclock("beat"):spin():effectmagnitude( 0, 0, rate * 3 )
        end,

        Def.Sprite{
            Texture=nodeBG,
            OnCommand=function(s)
                
                local rate = rate * 4 * 100

                s:setsize(1920*2,1080*2):xy(_screen.cx+500,_screen.cy-180):diffusealpha(0.2):pulse():effectperiod(rate)
            
            end,
        };
    };
    Def.Sprite{
        Texture=nodeBG,
        OnCommand=function(s)
            s:effectclock("beat"):setsize(1920*2,1080*2):rotationz(120):Center()
            s:diffusealpha(0.2):spin():effectmagnitude(0,0,-rate)
        end,
    };
};