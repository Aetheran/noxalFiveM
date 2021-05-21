local spawnPos = vector3(799.4449, -1049.533, 26.97255) -- ls customs delivery depot
--this sets spawn point
AddEventHandler('onClientGameTypeStart', function()
    exports.spawnmanager:setAutoSpawnCallback(function()
        exports.spawnmanager:spawnPlayer({
            x = spawnPos.x,
            y = spawnPos.y,
            z = spawnPos.z,
            model = 'cs_bank'
        }, function()
            TriggerEvent('chat:addMessage', {
                args = { 'Spawned!' }
            })
        end)
    end)

    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn()
end)
-- this is how i spawn cars, idk why I put it here lol
RegisterCommand('car', function(source, args)
    -- account for the argument not being passed
    local vehicleName = args[1] or 'sultan'
    -- check if the vehicle actually exists
    if not IsModelInCdimage(vehicleName) or not IsModelAVehicle(vehicleName) then
        TriggerEvent('chat:addMessage', {
            args = { 'Spawned'..vehicleName..'' }
        })

        return
    end
    RequestModel(vehicleName) -- load the model
    while not HasModelLoaded(vehicleName) do -- wait for the model to load
        Wait(500) 
    end

    local playerPed = PlayerPedId() -- get the local player ped
    local pos = GetEntityCoords(playerPed) -- get the position of the local player ped
    -- create the vehicle
    local vehicle = CreateVehicle(vehicleName, pos.x, pos.y, pos.z, GetEntityHeading(playerPed), true, false)
    SetPedIntoVehicle(playerPed, vehicle, -1) -- set the player ped into the vehicle's driver seat
    SetEntityAsNoLongerNeeded(vehicle) -- give the vehicle back to the game 
    SetModelAsNoLongerNeeded(vehicleName) -- release the model
    TriggerEvent('chat:addMessage', {
		args = { 'Enjoy your new ^*' .. vehicleName .. '!' }
	})
end, false)

--deleting vehicles
local dist = 5.0

RegisterCommand('dv', function() 
    local player = GetPlayerPed(-1)

    if (IsPedSittingInAnyVehicle(player)) then
        local veh = GetVehiclePedIsIn(player, false)
        if (GetPedInVehicleSeat(veh, -1) == player) then --only let the driver delete
            DeleteGivenVehicle(veh, 5)
        else
            print("Not in driver's seat")
        end
    else
        local fop = GetOffsetFromEntityInWorldCoords(player, 0.0, 5.0, 0.0)
        local veh = GetVehicleInDirection(player, GetEntityCoords(player))
        if (DoesEntityExist(veh)) then
            DeleteGivenVehicle(veh, 5)
        else
            print("Not able to locate")
end)

function DeleteGivenVehicle(veh, maxTimeout) -- easier to just make this seperate
    local timeout = 0
    SetEntityAsMissionEntity(veh, true, true)
    DeleteVehicle(veh)
    if (DoesEntityExist(veh)) then
        print("Delete failed, reattempting...")
        while (DoesEntityExist(veh) and timeout < maxTimeout) do
            if (not DoesEntityExist(veh)) then
                print("Deleted sucessfully")
            end
            timeout = timeout + 1
            Citizen.Wait(500) --if i make this wait it just plays nicer
            if (DoesEntityExist(veh) and (timeout == maxTimeout-1))
                print("Failed to delete after " .. maxTimeout .. " times.")
            end
        end
    else
        print("Deleted!")
    end
end


-- Gets a vehicle in a certain direction
-- Credit to Konijima
function GetVehicleInDirection(entFrom, coordFrom, coordTo)
	local rayHandle = StartShapeTestCapsule(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 5.0, 10, entFrom, 7)
    local _, _, _, _, vehicle = GetShapeTestResult(rayHandle)
    
    if (IsEntityAVehicle(vehicle)) then 
        return vehicle
    end 
end