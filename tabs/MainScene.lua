-- MainScene
-- Lesson8

-- Created by: Jacob Braun
-- Created on: Nov 16th 2015
-- Created for: ICS2OR-1
-- This is the second scene.
-- Magical Moving Scenes!

MainScene = class()
-- global to this file
local aBackButton
local settingsButton
local creditsButtons

function MainScene:init()
    -- sprite("Dropbox:Blue Back Rectangle Button")  
    aBackButton = Button("Dropbox:Blue Back Rectangle Button", vec2(WIDTH/2, HEIGHT/2))
    -- sprite("Dropbox:settingsButton",WIDTH/2, HEIGHT/2, 1024, 768)  
    settingsButton = Button("Dropbox:settingsButton", vec2(WIDTH/2, HEIGHT/2+200)) 
    creditsButtons = Button("Dropbox:Credits", vec2(WIDTH/2, HEIGHT/2-200))
    music("Game Music One:Electrik", true, 1)
end

function MainScene:draw()
    sprite("Documents:Puzzle", WIDTH/2, HEIGHT/2, 1024, 768)
    aBackButton:draw()
    settingsButton:draw()
    creditsButtons:draw()
end

function MainScene:touched(touch)
    aBackButton:touched(touch)
    if(aBackButton.selected == true) then
    Scene.Change("splash")
    music.stop()
    end
    settingsButton:touched(touch)
    if(settingsButton.selected == true) then
    Scene.Change("settings")
    music.stop()
    end
    creditsButtons:touched(touch)
    if(creditsButtons.selected == true) then
    Scene.Change("credits")
    music.stop()
    end
    
end