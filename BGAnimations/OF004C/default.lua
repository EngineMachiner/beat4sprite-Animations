
-- Making this animation was so hard to understand in the new system. :(

-- I think it's one of the most confusing animations I've ever written.


local Vector = Astro.Vector             local planeAxes = Vector.planeAxes

local Renderer = tapLua.Sprite.Renderer


local Commands = beat4sprite.Actor.Commands

local SoundWaves = beat4sprite.Modules.SoundWaves           local preferences = SoundWaves.preferences()

local BGColor = preferences.Colors.titleBGA


local scale = SCREEN_HEIGHT / 720

local builder = beat4sprite.Builder {

    Texture = "OutFox/SoundWaves/A 6x10.png",       Dynamic = true,

    Colors = { BGColor, Color.White },          Rate = 3,           Scroll = Vector()

}

builder = builder:merge(...)


local Scroll = builder.Scroll           local Angle = Vector.angle( Scroll )

Scroll = Vector("Right")                builder.Scroll = Scroll

builder.Sprite = {

    OnCommand=function(self)

        local p = self.TileParent          local matrix = p.Matrix             local offset = self.TilePos

        for i,v in ipairs(planeAxes) do offset[v] = offset[v] * Scroll[v] / matrix[v] end

        self.Effect.Period = 8          self:setEffectOffset(offset):setEffect("diffuseshift")
    
    end

}

builder.Composition = { OnCommand=function(self) self:rotationz(45):zoom(1.5) end }

builder.Output = { OnCommand=function(self) self:xy(0,0) end }


local Texture = builder.Texture                 local zoom = builder.Zoom * scale

Renderer:LoadBy( Texture[1] ):zoom(zoom)           local Height = Renderer:GetZoomedHeight()

return beat4sprite.BaseFrame {

    SoundWaves.Quad() .. { OnCommand=function(self) self:Center() end },

	tapLua.ActorFrameTexture {

        builder:Load(),

        OnCommand=function(self)

            local pos = Vector( SCREEN_WIDTH, Height )          self:GetChild(""):setPos( pos * 0.5 )

            if self:GetTexture() then return end


            self:setSizeVector(pos):Create():queuecommand("Tile")

        end,

        TileCommand=function(self)

            local Texture = self:GetTexture()
            
            local Builder = beat4sprite.Builder {
                
                Texture = Texture,    Blend = 'add',    Zoom = 1 / scale,       Dynamic = true,

                Sprite = {
                    
                    OnCommand=function(self)

                        local matrix = self.TileParent.Matrix              local x = self.TilePos.y

                        x = matrix.y / 2 - x            x = math.ceil(x)            x = math.abs(x) * 128

                        x = Vector( x, Height / 2 ) * scale           self:moveTextureBy(x)
                    
                    end
                
                },

                Output = {
                    
                    TextureCommand=function(self)
                        
                        self:rotationz(Angle):zoom( self:GetZoom() * 1.8 ):addimagecoords( 0, - Height )
                    
                    end
                
                }
            
            }

            local function Tile()
                
                return Builder:Load() .. { InitCommand=function(self) self:queuecommand("On") end }
            
            end

            self:GetParent():AddChild(Tile)

        end

    }

}