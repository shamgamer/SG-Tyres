local QBCore = exports['qb-core']:GetCoreObject()
CreateThread(function()
    if Config.StartMSGT then
    print(Config.StartMSG)
    end
end)

-- Commands:

RegisterCommand( Config.Tyrefixcommand, function()
    if Config.TFtoggle then
    local plyPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(plyPed, false)
    TriggerEvent("fixwheelsevent", vehicle)
    if Config.FWCTT then
    QBCore.Functions.Notify(Config.FWCT)
    end
    end
end)

RegisterCommand(Config.ABPtyrescommand, function()
    if Config.ABPtoggle then
    local plyPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(plyPed, false)
    if Config.ABPFW then
        TriggerEvent("fixwheelsevent", vehicle)
    end
    SetVehicleTyresCanBurst(vehicle, false)
    if Config.ABPTCT then
    QBCore.Functions.Notify(Config.ABPTC)
    end
    end
end)

RegisterCommand(Config.RBPtyrescommand, function()
    if Config.RBPtoggle then
    local plyPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(plyPed, false)
    if Config.RBPFW then
        TriggerEvent("fixwheelsevent", vehicle)
    end
    SetVehicleTyresCanBurst(vehicle, true)
    if Config.RBPTCT then
    QBCore.Functions.Notify(Config.RBPTC)
    end
    end
end)

-- Item Uses:

RegisterNetEvent("bptyre", function()
    if IsPedSittingInAnyVehicle(PlayerPedId()) then
    local plyPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(plyPed, false)
    if IsVehicleStopped(vehicle) then
    if Config.BPRTIUST then
        QBCore.Functions.Notify(Config.BPRTIUS)
    end
    if Config.BPTSUDT then
    exports['progressbar']:Progress({
        name = 'BPTyreswap',
        duration = Config.BPTSUD,
        label = "Swapping Tyres",
        useWhileDead = false,
        canCancel = false,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation ={},
        prop = {},
        propTwo = {},
    })
    Wait(Config.BPTSUD-1)
end
TriggerEvent("fixwheelsevent", vehicle)
    if Config.BPRTIBP then
    SetVehicleTyresCanBurst(vehicle, false)
    end
    TriggerServerEvent("sg-tyres:s:removeitem", Config.BpTyreSwap, 1)
    if Config.BPRTIUDT then
    QBCore.Functions.Notify(Config.BPRTIUD)
    end
end
end
end)

RegisterNetEvent("fixtyre", function()
    if IsPedSittingInAnyVehicle(PlayerPedId()) then
    local plyPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(plyPed, false)
    if IsVehicleStopped(vehicle) then
    if Config.NRTIUST then
        QBCore.Functions.Notify(Config.NRTIUS)
    end
    if Config.TSUDT then
    exports['progressbar']:Progress({
        name = 'Tyreswap',
        duration = Config.TSUD,
        label = "Swapping Tyres",
        useWhileDead = false,
        canCancel = false,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation ={},
        prop = {},
        propTwo = {},
    })
    Wait(Config.TSUD-1)
end
TriggerEvent("fixwheelsevent", vehicle)
if Config.NRTIBP then
SetVehicleTyresCanBurst(vehicle, true)
end
TriggerServerEvent("sg-tyres:s:removeitem", Config.TyreSwap, 1)
if Config.NRTIUDT then
QBCore.Functions.Notify(Config.NRTIUD)
end
end
end
end)

-- wheelfix event:

RegisterNetEvent("fixwheelsevent", function(vehicle)
    SetVehicleTyreFixed(vehicle, 0)
    SetVehicleTyreFixed(vehicle, 1)
    SetVehicleTyreFixed(vehicle, 2)
    SetVehicleTyreFixed(vehicle, 3)
    SetVehicleTyreFixed(vehicle, 4)
    SetVehicleTyreFixed(vehicle, 5)
    SetVehicleTyreFixed(vehicle, 6)
end)