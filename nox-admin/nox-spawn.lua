local spawnPos = vector3(799.4449, -1049.533, 26.97255) -- ls customs delivery depot

AddEventHandler('onClientGameTypeStart', function()
    exports.spawnmanager:setAutoSpawnCallback(function()
        exports.spawnmanager:spawnPlayer({
            x = spawnPos.x,
            y = spawnPos.y,
            z = spawnPos.z,
            model = 'a_m_m_skater_01'
        }, function()
            TriggerEvent('chat:addMessage', {
                args = { 'Spawned!' }
            })
        end)
    end)

    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn()
end)

RegisterCommand('car', function(source, args)
    -- account for the argument not being passed
    local vehicleName = args[1] or 'adder'
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