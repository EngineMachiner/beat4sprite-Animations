
local path = beat4sprite.animationPath("SL001A")

return loadfile(path) {
    
    Sprite = {

        OnCommand=function(self) self.Rainbow = true         self.Effect.updateTime = self.Index * 25 end
    
    }

}