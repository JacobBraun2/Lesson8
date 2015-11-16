-- Main
-- Lesson8

-- Created by: Jacob Braun
-- Created on: Nov 16th 2015
-- Created for: ICS2OR-1
-- This is the main scene.
-- Magical Moving Scenes!

-- Use this function to perform your initial setup
function setup()
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle() 
    
    -- create scene
    Scene("splash", SplashScreenScene)
    Scene("play", MainScene)
    Scene("credits", Credits)
    Scene("settings", Settings)
    
    Scene.Change("splash")  
end

-- This function gets called once every frame
function touched(touch)
    -- local variables
    
    Scene.Touched(touch)
end

 -- this function gets called once every frame   
function draw()
    sprite("SpaceCute:Background", WIDTH/2, HEIGHT/2, 1024, 768)
    Scene.Draw()
end