local panel = component.proxy("E885894BBD5642DCA966949479038100")
local button = panel:getModules()[1] -- Dein Button

local buttonState = true

-- Startfarbe setzen
button:setColor(0, 1, 0, 0.3) -- Grün

local panels = component.proxy(component.findComponent(classes.LargeControlPanel))
local lights = component.proxy(component.findComponent(classes.LightSource))

local panel = panels[1]
local light = lights[1]

-- The switch is expected to be in the middle of the panel
local switch = panel:getModule(5, 5, 0)

event.ignoreAll()
event.clear()

event.listen(switch)

while true do
    local e, s = event.pull()
    if s == switch and e == "ChangeState" then
        light.isLightEnabled = s.state
    end
end