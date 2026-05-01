
local path = beat4sprite.animationPath("5thBG010")

return loadfile(path) {

    -- Based on 5thBG007BB.

    [2] = { Output = {
        
        AlphaCommand=function(self)
    
            local t = self:tweenRate() / 2

            self:sleep( t * 2 ):diffusealpha(0):sleep(t):diffusealpha(1):sleep(t)
            
            self:queuecommand("Alpha")
        
        end

    } }

}