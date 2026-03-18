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
Tracker:AddLocations("locations/chapter1_locations.json")
Tracker:AddLocations("locations/chapter2_locations.json")
Tracker:AddLocations("locations/chapter3_locations.json")
Tracker:AddLocations("locations/chapter4_locations.json")
Tracker:AddLocations("locations/chapter5_locations.json")
Tracker:AddLocations("locations/chapter6_locations.json")
Tracker:AddLocations("locations/chapter7_locations.json")
Tracker:AddLocations("locations/chapter8_locations.json")
Tracker:AddLocations("locations/chapter9_locations.json")
Tracker:AddLocations("locations/monitor.json")


Tracker:AddLayouts("layouts/events.json")
Tracker:AddLayouts("layouts/maps.json")
Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/broadcast.json")
Tracker:AddLayouts("layouts/settings.json")
Tracker:AddLayouts("layouts/tracker.json")

Tracker.AllowDeferredLogicUpdate = true
