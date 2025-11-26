
local path = "/Themes/superuser/"

if not tapLua.isLegacy() then path = "/Appearance" .. path end

local function bga( bga, s ) return path .. "BGAnimations/" .. bga .. '/' .. s end

local function graphic(s) return path .. "Graphics/" .. s end

local function font(s) return path .. "Fonts/" .. s end

local function Background()

    local path = graphic("ScreenWithMenuElements nebula.png")

    local Back = beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

    local builder = beat4sprite.Builder.Background(path):merge { Layers = { Back = Back } }

    return builder

end

beat4sprite.Modules.Superuser = {
    
    Path = path,       bga = bga,      graphic = graphic,      font = font,     Background = Background

}