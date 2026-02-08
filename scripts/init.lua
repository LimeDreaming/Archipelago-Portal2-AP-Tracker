Tracker:AddMaps("maps/maps.json")
Tracker:AddItems("items/items.json")
Tracker:AddItems("items/events.json")

ScriptHost:LoadScript("scripts/logic.lua")
ScriptHost:LoadScript("scripts/utils.lua")
if ScriptHost.AddVariableWatch then
    ScriptHost:LoadScript("scripts/autotracking.lua")
end

Tracker:AddLocations("locations/logic.json")
Tracker:AddLocations("locations/locations.json")


Tracker:AddLayouts("layouts/events.json")
Tracker:AddLayouts("layouts/maps.json")
Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/broadcast.json")
Tracker:AddLayouts("layouts/settings.json")
Tracker:AddLayouts("layouts/tracker.json")

Tracker.AllowDeferredLogicUpdate = true