local QBCore = exports['qb-core']:GetCoreObject()

	QBCore.Functions.CreateUseableItem( Config.TyreSwap, function(source, item)
		if Config.TStoggle then
		TriggerClientEvent('fixtyre', source)
		end
	end)

	QBCore.Functions.CreateUseableItem( Config.BpTyreSwap, function(source, item)
		if Config.BPStoggle then
		TriggerClientEvent('bptyre', source)
		end
	end)


	RegisterNetEvent("sg-tyres:s:removeitem", function(item, amount)
		local player = QBCore.Functions.GetPlayer(source)
		player.Functions.RemoveItem(item, amount, false)
	end)