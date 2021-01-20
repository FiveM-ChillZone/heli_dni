-- FiveM ChillZone

-- discord https://discord.gg/HAS4S7c

-- Feel free to edit everithing 

function DrawTxt(text, x, y)
	SetTextFont(2)
	SetTextProportional(1)
	SetTextScale(0.4, 0.4)
	SetTextDropshadow(1, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow(1)
	SetTextOutline(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x, y)
end

Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		local entity = IsPedInAnyVehicle(PlayerPedId()) and GetVehiclePedIsIn(PlayerPedId(), false) or PlayerPedId()
		x, y, z = table.unpack(GetEntityCoords(entity, true))
        
        
        if IsPedInAnyHeli(PlayerPedId(), 1) then
            
            altz = tonumber(string.format("%.0f", z))
            DrawTxt("~g~Altitude~s~ "..altz.." ~g~F", 0.015, 0.76) -- 0.445, 0.00)

            heading = GetEntityHeading(entity)
		    headh = tonumber(string.format("%.0f", heading))
		    DrawTxt("~g~Compass~s~ "..headh, 0.015, 0.71)

            speed = GetEntitySpeed(PlayerPedId())
            speedxy = tonumber(math.floor(speed *2.2369 / 1.151)) -- "i have to do it like this don't know another way"
            DrawTxt("~r~Air Speed ~s~"..speedxy.." ~*~Still In Beta", 0.015, 0.66)
            
            
        
            
                
            
		end
    end
end)
--[[ 
local mph = 2.2369
local kph = 3.6 
]]

