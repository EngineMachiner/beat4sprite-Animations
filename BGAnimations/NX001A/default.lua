
local Builder = beat4sprite.Builder

local NX = beat4sprite.Modules.NX             local graphic = NX.bga


local Actors = beat4sprite.ActorFrame { OnCommand=function(self) self:SetDrawByZPosition(true) end }

local textures = { "bronze.png", "silver.png", "gold.png" }

for i,v in ipairs(textures) do

    local builder = Builder {
        
        Texture = graphic( "_ability", v ),        Script = "Particles/Explosion",

        Rate = 2,       Zoom = 0.75,

        Sprite = {
            
            MotionCommand=function(self)
            
                if i ~= 2 then return end

                local r = self:GetRotationZ() + 360         self:rotationz(r)
            
            end 
        
        }

    }

    Actors[i] = builder:Load() .. {

        OnCommand=function(self) self:queuecommand("Delay") end,

        DelayCommand=function(self) -- Just delay at first...

            local i = i - 1         local s = self:tweenRate() * i
            
            self:diffusealpha(0):sleep(s):diffusealpha(1):queuecommand("Cycle")
        
        end,

        CycleCommand=function(self)

            local s = self:tweenRate() * #textures

            self:queuecommand("Prepare"):queuecommand("Motion")

            self:z(1):sleep( s / 4 ):z(0):sleep( s * 3 / 4 ):queuecommand("Cycle")
        
        end

    }

end

return beat4sprite.ActorFrame { NX.Quad(),      Actors }