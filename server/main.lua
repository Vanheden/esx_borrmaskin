ESX               = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('drill', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local drill = xPlayer.getInventoryItem('drill')
	
		if drill.count > 0 then
			xPlayer.removeInventoryItem('drill', 1)
			TriggerClientEvent('esx_borrmaskin:startDrill', source)
		else
			TriggerClientEvent('esx:showNotification', source, ('Du har ingen ~r~borrmaskin'))
		end
end)