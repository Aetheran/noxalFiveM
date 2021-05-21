--variables
x1 = 0.016 --title-mph
y1 = 0.843
x2 = 0.016 --mph
y2 = 0.803
x3 = 0.016 --rpm
y3 = 0.883
x4 = 0.016 --gear
y4 = 0.883
x5 = 0.1
y5 = 0.9

--functions

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, false)
end

function drawVar(var, x, y) --actual var print
    SetTextFont(2) --0=normal, 1=fancy, 2=default
    SetTextScale(0.9, 0.9)
    SetTextEntry("STRING")
    AddTextComponentString(var)
    DrawText(x, y)
end

function drawTitle(var, x, y) --Title edit: why did I make the same function twice lol oops
    SetTextFont(2)
    SetTextScale(0.9, 0.9)
    SetTextEntry("STRING")
    AddTextComponentString(var)
    DrawText(x, y)
end

function txtDraw(x, y, width, height, scale, var, r, g, b, a) --this might be cleaner idk
    SetTextFont(2)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0, 255)
    SetTextEntry("STRING")
    AddTextComponentString(var)
    DrawText(x - width/2, y - height/2 + 0.005)
end

--[[function fuelGauge(fuelLvl, x, y)
    local width = 0.15 --0.0-1.0, 1.0 means the whole screen
    local height = 0.05 
    DrawRect(x, y, width, height, r, g, b, 255) --why in god's name are the x/y relative to the center of the rectangle?
end]]--
--main thread

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local speed = 0
        local gear = 0
        local rpm = 0
        local fuel = 0
        --rpm = GetVehicleClutch(veh, false)
        --if rpm < 0.2 then rpm = 0.2 end
        
        if(IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1)), false)*2.236936 --constant for conversion to mph
            gear = GetVehicleCurrentGear(GetVehiclePedIsIn(GetPlayerPed(-1)), false)
            fuel = GetVehicleFuelLevel(GetVehiclePedIsIn(GetPlayerPed(-1)))
            drawVar("~g~" .. math.ceil(speed), x1, y1)
            drawTitle("MPH", x2, y2)
            --drawVar("~r~" .. math.abs(rpm)*6000, x3, y3)
            drawVar("~r~" .. gear, x4, y4)
            --fuelGauge(fuel, )
        end
    end
end)
