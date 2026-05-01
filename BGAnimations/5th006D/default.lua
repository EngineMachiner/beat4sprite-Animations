
local path = ... or "5th006A"

path = beat4sprite.animationPath(path)          local isEven = Astro.Math.isEven

return Def.ActorFrame {

    loadfile(path) {
        
        Visibility = function( i, j ) local x = i + j - 1       return isEven(x) end
    
    },

    loadfile(path) {
        
        Texture = "5th/3A 1x4.png",
        
        Visibility = function( i, j ) local x = i + j       return isEven(x) end
    
    }

}