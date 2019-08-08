ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('leñar:doymadera')
AddEventHandler('leñar:doymadera', function(madera)
	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(source)	
		xPlayer.addInventoryItem(madera, 1)
end)

RegisterServerEvent('leñar:recibodata')
AddEventHandler('leñar:recibodata',function(data)
	maderas = data
	TriggerClientEvent('leñar:recibodatacliente',-1,data)
end)

RegisterServerEvent('leñar:getJob')
AddEventHandler('leñar:getJob',function()
	local source = source
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayers[i] == source then
			TriggerClientEvent('leñar:setJob',xPlayers[i],xPlayer.job.name)
		end
	end
end)

RegisterServerEvent('leñar:quitomad')
AddEventHandler('leñar:quitomad',function()
	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(source)
	for i = 1, #xPlayer.inventory,1 do
		if xPlayer.inventory[i].name == "maderag" then
			if xPlayer.inventory[i].count > 0 then
				local count = xPlayer.inventory[i].count
				xPlayer.addMoney(count*math.random(45,60))
				xPlayer.removeInventoryItem(xPlayer.inventory[i].name,count)
			end
		elseif xPlayer.inventory[i].name == "maderam" then
			if xPlayer.inventory[i].count > 0 then
				local count = xPlayer.inventory[i].count
				xPlayer.addMoney(count*math.random(35,50))
				xPlayer.removeInventoryItem(xPlayer.inventory[i].name,count)
			end
		elseif xPlayer.inventory[i].name == "maderaf" then
			if xPlayer.inventory[i].count > 0 then
				local count = xPlayer.inventory[i].count
				xPlayer.addMoney(count*math.random(25,40))
				xPlayer.removeInventoryItem(xPlayer.inventory[i].name,count)
			end
		elseif xPlayer.inventory[i].name == "madera" then
			if xPlayer.inventory[i].count > 0 then
				local count = xPlayer.inventory[i].count
				xPlayer.addMoney(count*math.random(20,30))
				xPlayer.removeInventoryItem(xPlayer.inventory[i].name,count)
			end
		end
	end
end)

function recamaderas()
	for i=1, #maderas, 1 do
		if maderas[i].vida < maderas[i].max then
			maderas[i].vida = maderas[i].vida + 1
		end
	end
	--Sincroniar
	TriggerClientEvent('leñar:recibodatacliente',-1,maderas)
end

function loop()
Citizen.CreateThread(function()
	while true do
		recamaderas()
		Citizen.Wait(30000)
	Citizen.Wait(0)
	end
end)
end

loop()



