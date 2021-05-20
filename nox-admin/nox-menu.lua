local is_cops_on = false
local is_godmode = false

local menu = MenuV:CreateMenu('Noxal Admin', 'Menu', 'topright', 255, 0, 0, 'size-150', 'default', 'menuv', 'menu_namespace')

local remCop = menu:AddButton({ icon = '', label = 'Lose Cops', value = false })
local cops = menu:AddCheckbox({icon = '', label = 'Cops Enabled', value = false })
local heal = menu:AddButton({ icon = '', label = 'Heal Player', value = false })
local revive = menu:AddButton({ label = 'Revive Player'})
local godmode = menu:AddCheckbox({ icon = '', label = 'Godmode', value = false })
local repairCar = menu:AddButton({ icon = '', label = 'Repair Car', value = false })
local clearloadout = menu:AddButton({ label = 'Clear Loadout'})
local coords = menu:AddButton({ label = 'Get Coords'})



remCop:On('select', function(i)
    local pLoc = GetEntityCoords(GetPlayerPed(-1))
    ClearAreaOfCops(pLoc.x, pLoc.y, pLoc.z, 9000.0)
    SetPlayerWantedLevel(PlayerId(), 0, false)
    SetPlayerWantedLevelNow(PlayerId(), false)
    SetPlayerWantedLevelNoDrop(PlayerId(), 0, false)
end)

cops:On('check', function(item)
    is_cops_on = true
    notify("Cops Enabled")
end)

cops:On('uncheck', function(item)
    is_cops_on = false
    notify("Cops Disabled")
end)

heal:On('select', function(i)
    SetEntityHealth(PlayerPedId(), 200)
    notify("Player Healed")
end)

godmode:On('check', function(item)
    SetEntityHealth(PlayerPedId(), 200)
    is_godmode = true
    --SetPlayerInvincible(GetPlayerPed(-1), true)
    SetEntityCanBeDamaged(GetPlayerPed(-1), false)
    notify("Godmode Enabled")
end)

godmode:On('uncheck', function(item)
    is_godmode = false
    --SetPlayerInvincible(GetPlayerPed(-1), false)
    SetEntityCanBeDamaged(GetPlayerPed(-1), true)
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

--[[
    Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)
    local pLoc = GetEntityCoords(GetPlayerPed(-1))
    ClearAreaOfCops(pLoc.x, pLoc.y, pLoc.z, 400.0)
    end
end
]]--

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
        if (is_cops_on) then goto continue end
		for i = 1, 12 do
			EnableDispatchService(i, false)
		end
		SetPlayerWantedLevel(PlayerId(), 0, false)
		SetPlayerWantedLevelNow(PlayerId(), false)
		SetPlayerWantedLevelNoDrop(PlayerId(), 0, false)
        ::continue::
	end
end)

--Citizen.CreateThread(function()
--    while true do
--        Citizen.Wait(1000)
--        print(is_godmode)
--        if (is_godmode) then
--            SetPlayerInvincible(GetPlayerPed(-1), true)
--            SetEntityHealth(PlayerPedId(), 200)
--        elseif (GetEntityHealth(GetPlayerPed(-1)) ~= 0) then
--            SetPlayerInvincible(GetPlayerPed(-1), false)
--        end
--    end
--end)