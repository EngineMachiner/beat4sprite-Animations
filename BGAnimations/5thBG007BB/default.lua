
-- Verify this animation because I don't remember.

local path = beat4sprite.animationPath("5thBG007B")

return loadfile(path) {

    [2] = { Output = {

        OnCommand=function(self) self:queuecommand("Alpha") end,

        AlphaCommand=function(self)
        
            local t = self:tweenRate() / 2

            self:sleep( t * 2 ):diffusealpha(0):sleep(t):diffusealpha(1):sleep(t)
            
            self:queuecommand("Alpha")
        
        end

    } }

}