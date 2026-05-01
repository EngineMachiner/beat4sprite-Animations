
local t, l = { Reversed = true }

local path = beat4sprite.animationPath("5th076BA")         local builder = loadfile(path)().Builder

local Helix1 = beat4sprite.ActorFrame {
    
    builder[2]:Load(),      builder[3]:Load(),

    CycleCommand=function(self)

        t = self:tweenRate()        l = t / 8

        self:sleep( t * 0.75 ):linear(l):diffusealpha(0):sleep(t):linear(l):diffusealpha(1):queuecommand("Cycle")
    
    end

}

local Helix2 = beat4sprite.ActorFrame {
    
    builder[2]:merge(t):Load(),         builder[3]:merge(t):Load(),

    OnCommand=function(self) self:diffusealpha(0) end,

    CycleCommand=function(self)

        self:sleep( t * 0.875 ):linear(l):diffusealpha(1):sleep( t * 0.75 ):linear(l):diffusealpha(0)
        
        self:sleep(l):queuecommand("Cycle")
    
    end

}

local function onChildren(self) self:init( builder[2] ) end

return beat4sprite.BaseFrame {
    
    builder[1]:Load(), Helix1, Helix2,
    
    OnCommand=function(self) self:RunCommandsOnChildren(onChildren):queuecommand("Cycle") end

}