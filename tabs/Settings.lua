Settings = class()

function Settings:init()
    -- sprite("Dropbox:Blue Back Rectangle Button")  
    aBackButton = Button("Dropbox:Blue Back Rectangle Button", vec2(WIDTH/2-200, HEIGHT/2-200))
end

function Settings:draw()
    sprite("SpaceCute:Background")
    sprite("Dropbox:settingsButton", WIDTH/2, HEIGHT/2, 256, 256)
    aBackButton:draw()
end

function Settings:touched(touch)
    aBackButton:touched(touch)
    if(aBackButton.selected == true) then
    Scene.Change("play")
    end
end
