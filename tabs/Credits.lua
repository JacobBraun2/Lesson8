-- MainScene
-- Lesson8

-- Created by: Jacob Braun
-- Created on: Nov 16th 2015
-- Created for: ICS2OR-1
-- This is the credits scene.
-- Magical Moving Scenes!

Credits = class()
local aBackButton

function Credits:init()
    -- sprite("Dropbox:Blue Back Rectangle Button")  
    aBackButton = Button("Dropbox:Blue Back Rectangle Button", vec2(WIDTH/2-200, HEIGHT/2-200))
end

function Credits:draw()
    sprite("Documents:rollTheCredits", WIDTH/2, HEIGHT/2, 1024, 768)
    aBackButton:draw()
end

function Credits:touched(touch)
    aBackButton:touched(touch)
    if(aBackButton.selected == true) then
    Scene.Change("play")
    end
end
