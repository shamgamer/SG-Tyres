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
	

-- Commands:

	QBCore.Commands.Add(Config.Tyrefixcommand, Config.FixTyreCommandDescription, {}, false, function(source)
		TriggerClientEvent(Config.Tyrefixcommand, source)
	end, Config.FixTyreCommandRequirement)
	

	QBCore.Commands.Add(Config.ABPtyrescommand, Config.AddBulletproofTyresCommandDescription, {}, false, function(source)
		TriggerClientEvent(Config.ABPtyrescommand, source)
	end, Config.AddBulletproofTyreCommandRequirement)


	QBCore.Commands.Add(Config.RBPtyrescommand, Config.RemoveBulletproofTyresCommandDescription, {}, false, function(source)
		TriggerClientEvent(Config.RBPtyrescommand, source)
	end, Config.RemoveBulletproofTyreCommandRequirement)



	RegisterNetEvent("sg-tyres:s:PrintToConsole", function(cmdtype)
		local playerid = GetPlayerIdentifiers(source)
		print(playerid[1].. " | Just Used: "  ..cmdtype)
	end)
