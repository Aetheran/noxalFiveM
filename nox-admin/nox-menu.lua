local menu = MenuV:CreateMenu('Admin', 'Logged in as Admin', 'topright', 255, 0, 0, 'size-150', 'default', 'menuv', 'admin_namespace')

local remCop = menu:AddButton({ icon = '', label = 'Remove Cops', value = false })
local heal = menu:AddButton({ icon = '', label = 'Heal Player', value = false })
local revive = menu:AddButton({ label = 'Revive Player'})
local godmode = menu:AddCheckbox({ icon = '', label = 'Godmode', value = false })
local repairCar = menu:AddButton({ icon = '', label = 'Repair Car', value = false})
local clearloadout = menu:AddButton({ label = 'Clear Loadout'})
local coords = menu:AddButton({ label = 'Get Coords'})

remCop:On('select', function(i)
    local pLoc = GetEntityCoords(GetPlayerPed(-1))
    ClearAreaOfCops(pLoc.x, pLoc.y, pLoc.z, 9000.0)
end)

heal:On('select', function(i)
    SetEntityHealth(PlayerPedId(), 200)
    notify("Player Healed")
end)

godmode:On('check', function(item)
    SetEntityHealth(PlayerPedId(), 200)
    SetPlayerInvincible(GetPlayerPed(-1), true)
    notify("Godmode Enabled")
end)

godmode:On('uncheck', function(item)
    SetPlayerInvincible(GetPlayerPed(-1), false)
    notify("Godmode Disabled")
end)

repairCar:On('select', function(item)
    local localPlayerPed = GetPlayerPed(-1)
    local localVehicle = GetVehiclePedIsIn(localPlayerPed, false)
    SetVehicleFixed(localVehicle)
end)

revive:On('select', function(i)
    SetEntityHealth(PlayerPedId(), 200)
end)

coords:On('select', function(i)
    local coords = GetEntityCoords(GetPlayerPed(-1))
    notify(coords .. "")
end)

clearloadout:On('select', function(i)
    RemoveAllPedWeapons(GetPlayerPed(-1), p1)
end)

RegisterCommand("menu", function()
    MenuV:OpenMenu(menu)
    notify("Admin Menu")
end)

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end