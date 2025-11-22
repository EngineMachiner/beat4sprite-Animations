
local path = "/Themes/DanceDanceRevolution-NX/"

if not tapLua.isLegacy() then path = "/Appearance" .. path end

local function bga( bga, s ) return path .. "BGAnimations/" .. bga .. '/' .. s end

local function graphic(s) return path .. "Graphics/" .. s end

local function font(s) return path .. "Fonts/" .. s end

local function Quad()

    local Back = beat4sprite.ScreenQuad( Color.Black ) .. { OnCommand=function(self) self:Center() end }

    local path = bga( "ScreenWithMenuElements background", "blur (stretch).png" )

    local builder = beat4sprite.Builder.Background(path):merge { Layers = { Back = Back } }

    return builder:Load()

end

beat4sprite.Modules.NX = {
    
    Path = path,       bga = bga,      graphic = graphic,      font = font,     Quad = Quad

}