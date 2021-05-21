boost_factor = 50.4 --original accel + *this* times the original accel
max_mult = 1.3 --times maximum speed
nitro_dur = 3 --secs
discharge_factor = 1 --multiplies with nitro_dur
recharge_factor = 0.5 -- ^^

Citizen.CreateThread(function()
    loop_start = 0
    nitrous = 1
    last_v = 0
    v_max_speed = 0
    v_accel = 0
    while true do
        last_time = loop_start
        loop_start = GetGameTimer()
        dt = (loop_start - last_time)/1000 --in secs
        vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
        if not (last_v == vehicle) then --cache max speed/accel if vehicle changed
            last_v = vehicle
            if (vehicle == 0) then goto continue end
            SetVehicleNitroEnabled(vehicle, false)
            v_max_speed = GetVehicleEstimatedMaxSpeed(vehicle)*max_mult
            v_accel = GetVehicleAcceleration(vehicle)

        end
        if not (IsToggleModOn(vehicle,19)) then
            goto continue
        end
        curr_speed = GetEntitySpeed(vehicle)
        if (IsControlPressed(0, 21) and curr_speed > 2) then
            if (nitrous <= 0) then
                nitrous = 0
                goto continue
            end
            new_speed = v_accel*boost_factor*dt + curr_speed --multiply speed
            nitrous = nitrous - dt/nitro_dur*discharge_factor
            if (new_speed > v_max_speed) then new_speed = v_max_speed --clamp speed
            end
            SetVehicleBoostActive(vehicle, true) --boost sound
            SetVehicleForwardSpeed(vehicle, new_speed) --set new speed
        else
            if (nitrous >= 1) then
                nitrous = 1
                goto continue
            end
            nitrous = nitrous + dt/nitro_dur*recharge_factor
        end
        ::continue::
        Citizen.Wait(5)
    end
end)

--[[
Citizen.CreateThread(function()
    enabled = false
    vehicle = nil
    while true do
        cur_vehicle = GetVehiclePedIsIn(GetPlayerPed(-1))
        if (cur_vehicle ~= vehicle) then
            vehicle = cur_vehicle
            enabled = false
        end
        if (not enabled and IsToggleModOn(vehicle,19)) then
            SetVehicleNitroEnabled(vehicle, true, 3, 10000, false)
            enabled = true
        end
        Citizen.Wait(1000)
    end
end)
--]]