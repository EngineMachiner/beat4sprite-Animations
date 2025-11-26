
local path = "/Themes/Infinitesimal/"

if not tapLua.isLegacy() then path = "/Appearance" .. path end

local function bga( bga, s ) return path .. "BGAnimations/" .. bga .. '/' .. s end

local function graphic(s) return path .. "Graphics/" .. s end

local function font(s) return path .. "Fonts/" .. s end

local function Background( table )

    table.params = table.params or {}       local isVertical = table.params.isVertical
    
    local statesRate = beat4sprite.Actor.statesRate

    local path = graphic("Grid/grid (stretch).png")
    
    local color1, color2 = color("#c350f3"), color("#6028bb")

    -- Based on the grid of the theme.

    local function onChildren(self)
        
        self:effectclock("beat"):set_use_effect_clock_for_texcoords(true)
        

        local y = statesRate(self) * 4         y = 1 / y

        self:texcoordvelocity(0, y):fadebottom(1)            self:halign(0.5):valign(0)
    
    end

    local Grid = beat4sprite.ActorFrame {

        Name = "Grid",      FOV = 90,

        OnCommand=function(self)
            
            self:Center():zoomx(2.2)           self:diffuse(color1):diffusealpha(0.5)

            if isVertical then self:zoomy( self:GetZoomY() * 1.75 ):rotationz(90) end

            self:RunCommandsOnChildren(onChildren)

        end,

        beat4sprite.Sprite {
            
            Name = "Top",           Texture = path,
            
            OnCommand=function(self) self:y( - SCREEN_CENTER_Y ):rotationx(84) end
        
        },

        beat4sprite.Sprite {
            
            Name = "Bottom",        Texture = path,
            
            OnCommand=function(self) self:CenterY():rotationx(98) end

        }

    }

    local Gradient = beat4sprite.Sprite {
        
        Name = "Gradient",      Texture = graphic("Background/gradient.png"),
        
        OnCommand=function(self) self:Center():diffuse(color2):diffusealpha(0.5) end

    }

    local Back = beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }
    
    return beat4sprite.ActorFrame { Back, Grid, Gradient } .. table

end

beat4sprite.Modules.Infinitesimal = {
    
    Path = path,       bga = bga,      graphic = graphic,      font = font,     Background = Background

}