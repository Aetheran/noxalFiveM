--variables
x1 = 0.016 --title
y1 = 0.843
x2 = 0.016 --mph
y2 = 0.803
x3 = 0.016 --rpm
y3 = 0.883

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

function drawTitle(var, x, y) --Title
    SetTextFont(2)
    SetTextScale(0.9, 0.9)
    SetTextEntry("STRING")
    AddTextComponentString(var)
    DrawText(x, y)
end

--main thread

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local speed = 0
        local rpm = 0
        speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*2.236936 --constant for conversion to mph
        --rpm = GetVehicleClutch(GetVehiclePedIsIn(GetPlayerPed(-1), false))
        if rpm < 0.2 then rpm = 0.2 end
        
        if(IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            drawVar("~g~" .. math.ceil(speed), x1, y1)
            drawTitle("MPH", x2, y2)
            --drawVar("~r~" .. math.abs(rpm)*6000, x3, y3)
        end
    end
end)
