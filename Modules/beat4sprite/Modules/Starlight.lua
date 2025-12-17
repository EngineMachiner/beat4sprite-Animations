
local path = "/Themes/XX -STARLiGHT- twopointzero/"

if not tapLua.isLegacy() then path = "/Appearance" .. path end

local function bga( bga, s ) return path .. "BGAnimations/" .. bga .. '/' .. s end

local function graphic(s) return path .. "Graphics/" .. s end

local function font(s) return path .. "Fonts/" .. s end

local function Background()

    local path = bga( "ScreenWithMenuElements background/Default", "background.mp4" )

    return beat4sprite.Movie { File = path }

end

beat4sprite.Modules.Starlight = {
    
    Path = path,       bga = bga,      graphic = graphic,      font = font,     Background = Background

}