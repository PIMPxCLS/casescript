ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local display = false
local myWin;

RegisterNUICallback("whatItem", function(data)
    myWin = data.whatItem
end)

RegisterNUICallback("givemee", function(data)

if myWin == "MoneyWin1" then    TriggerServerEvent("caseMoneyWin1") end

if myWin == "MoneyWin2" then    TriggerServerEvent("caseMoneyWin2") end

if myWin == "MoneyWin3" then    TriggerServerEvent("caseMoneyWin3") end    

if myWin == "BlackMoney1" then  TriggerServerEvent("caseBlackMoneyWin1") end

if myWin == "BlackMoney2" then  TriggerServerEvent("caseBlackMoneyWin2") end

if myWin == "BlackMoney3" then  TriggerServerEvent("caseBlackMoneyWin3") end

if myWin == "WeaponWin1" then   TriggerServerEvent("caseWeaponWin1") end

if myWin == "WeaponWin2" then   TriggerServerEvent("caseWeaponWin2") end

if myWin == "WeaponWin3" then   TriggerServerEvent("caseWeaponWin3") end

if myWin == "ExtraItem1" then   TriggerServerEvent("caseItemWin1") end

if myWin == "ExtraItem2" then   TriggerServerEvent("caseItemWin2") end

if myWin == "ExtraItem3" then   TriggerServerEvent("caseItemWin3") end

if myWin == "ImportItem1" then TriggerServerEvent("caseImportWin1", GeneratePlate()) end

if myWin == "ImportItem2" then TriggerServerEvent("caseImportWin2", GeneratePlate()) end

if myWin == "ImportItem3" then TriggerServerEvent("caseImportWin3", GeneratePlate()) end

if myWin == "ImportItem4" then TriggerServerEvent("caseImportWin4", GeneratePlate()) end  

if myWin == "Re-Spin" then  TriggerServerEvent("caseRESPIN") end

end)

RegisterNetEvent('caseOpen')
AddEventHandler('caseOpen', function()
    SetDisplay(true)
end)

RegisterNUICallback("exit", function(data)
    SetDisplay(false)
end)

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "case",
        status = bool,
    })
end

Citizen.CreateThread(function()
    while display do
        Citizen.Wait(0)
        DisableControlAction(0, 1, display) 
        DisableControlAction(0, 2, display) 
        DisableControlAction(0, 142, display) 
        DisableControlAction(0, 18, display) 
        DisableControlAction(0, 322, display) 
        DisableControlAction(0, 106, display) 
    end
end)

Citizen.CreateThread(function()

    local NumberCharset = {}
    local Charset = {}
    
    for i = 48,  57 do table.insert(NumberCharset, string.char(i)) end
    
    for i = 65,  90 do table.insert(Charset, string.char(i)) end
    for i = 97, 122 do table.insert(Charset, string.char(i)) end
    
    function GeneratePlate()
        local generatedPlate
        local clsstinkt
        local useSpace = true
        local doBreak = false
    
        while true do
            Citizen.Wait(2)
            math.randomseed(GetGameTimer())
            if useSpace then
                generatedPlate = string.upper(GetRandomLetter(3) .. ' ' .. GetRandomNumber(3))
            else
                generatedPlate = string.upper(GetRandomLetter(3) .. GetRandomNumber(3))
            end
    
            ESX.TriggerServerCallback('esx_vehicleshop:isPlateTaken', function(isPlateTaken)
                if not isPlateTaken then
                    doBreak = true
                end
            end, generatedPlate)
    
            if doBreak then
                break
            end
        end
    
        return generatedPlate
    end
    
    -- mixing async with sync tasks
    function IsPlateTaken(plate)
        local callback = 'waiting'
    
        ESX.TriggerServerCallback('esx_vehicleshop:isPlateTaken', function(isPlateTaken)
            callback = isPlateTaken
        end, plate)
    
        while type(callback) == 'string' do
            Citizen.Wait(0)
        end
    
        return callback
    end
    
    function GetRandomNumber(length)
        Citizen.Wait(0)
        math.randomseed(GetGameTimer())
        if length > 0 then
            return GetRandomNumber(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
        else
            return ''
        end
    end
    
    function GetRandomLetter(length)
        Citizen.Wait(0)
        math.randomseed(GetGameTimer())
        if length > 0 then
            return GetRandomLetter(length - 1) .. Charset[math.random(1, #Charset)]
        else
            return ''
        end
    end
end)