
local Builder = beat4sprite.Builder.Retro

local animationPath = beat4sprite.animationPath         local builder = Builder {}

local Cycle = {

    CycleSetupCommand=function(self) self:playcommand("Animation") end,

    CycleOnCommand=function(self) self:init(builder):diffusealpha(0):queuecommand("Cycle") end,

    AnimationCommand=function(self) self:diffusealpha(1):sleep(2):diffusealpha(0) end,

    CycleCommand=function(self)

        local s = self.CycleTimes

        self:sleep( s[1] ):playcommand("Animation"):sleep( s[2] ):queuecommand("Cycle")

    end

}

local path = animationPath("5th012A")

local Tile1 = loadfile(path)() .. Cycle         path = animationPath("5th016A")
local Tile2 = loadfile(path)() .. Cycle         path = animationPath("5th037")
local Tile3 = loadfile(path)() .. Cycle

local Tile4 = Builder.Load { Texture = "5th/1 4x4.png",      States = 16 } .. Cycle

return Builder.Load {

    Actors = { Tile1, Tile2, Tile3, Tile4 },        Script = "Cycle"
    
}