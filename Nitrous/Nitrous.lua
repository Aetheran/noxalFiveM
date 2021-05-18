Citizen.CreateThread(function()
    nitro_timer = 5000 --minimum time between nitrous (msec)
    speed_factor = 1.5 --times the original speed
    max_mult = 1.3 --times maximum speed
    last_time = 0
    while true do
        vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
        if not (IsToggleModOn(vehicle,19)) then
            goto continue 
        end
        if (IsControlPressed(0, 21)) then
            currtime = GetGameTimer()
            if (currtime - last_time < nitro_timer) then
                --notify(nitro_timer - (currtime - last_time).."msecs left")
                goto continue
            end
            last_time = currtime
            max = GetVehicleEstimatedMaxSpeed(vehicle)*max_mult --1.5x max physics speed
            speed = GetVehicleDashboardSpeed(vehicle) --current speed
            new_speed = speed*speed_factor --multiply speed
            if (new_speed > max) then new_speed = max --clamp speed
            end
            SetVehicleBoostActive(vehicle, true) --boost sound
            SetVehicleForwardSpeed(vehicle, new_speed)
        end
        ::continue::
        Citizen.Wait(5)
    end
end)

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end