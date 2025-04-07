local panel = component.proxy("E885894BBD5642DCA966949479038100")
local button = panel:getModules()[1] -- Dein Button

local buttonState = true

-- Startfarbe setzen
button:setColor(0, 1, 0, 0.3) -- Grün

-- Callback hinzufügen
button:addCallback("onClick", function()
    buttonState = not buttonState

    if buttonState then
        button:setColor(0, 1, 0, 0.3) -- Grün
        print("Button aktiviert")
    else
        button:setColor(1, 0, 0, 0.3) -- Rot
        print("Button deaktiviert")
    end
end)