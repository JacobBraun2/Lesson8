-- SplashScreenScene
-- Lesson8

-- Created by: Jacob Braun
-- Created on: Nov 16th 2015
-- Created for: ICS2OR-1
-- This is the first scene.
-- Magical Moving Scenes!

SplashScreenScene = class()
-- global to this file
local aButton

function SplashScreenScene:init()
    -- sprite("Dropbox:Credits",WIDTH/2, HEIGHT/2, 1024, 768)  
    aButton = Button("Dropbox:Blue Move Scene Forward Button", vec2(WIDTH/2, HEIGHT/2)) 
    
end

function SplashScreenScene:draw()
    sprite("Dropbox:CompanyLogo",WIDTH/2, HEIGHT/2, 1024, 768)
    aButton:draw()
   
end

function SplashScreenScene:touched(touch)
    aButton:touched(touch)
    if(aButton.selected == true) then 
    Scene.Change("play")
    end
end