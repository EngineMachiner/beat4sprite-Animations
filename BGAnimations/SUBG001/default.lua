
local Superuser = beat4sprite.Modules.Superuser

return beat4sprite.ActorFrame { 
    
    beat4sprite.Builder.SongBackground():Load(),
    
    Superuser.Background():Load() .. { OnCommand=function(self) self:diffusealpha(0.8) end }

}