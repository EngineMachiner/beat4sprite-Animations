
local path = beat4sprite.animationPath("5th055")

return loadfile(path) {
    
    [2] = {

        Sprite = {
        
            OnCommand=function(self)

                local i = self:spiralIndex(true)        local sleep = i * self:tweenRate() / 8

                self.z = self:GetZoom()         self:zoom(0):sleep(sleep):queuecommand("Spiral")
            
            end

        }

    }

}