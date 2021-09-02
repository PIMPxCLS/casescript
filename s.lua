ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local DISCORD_WEBHOOK = ""
local DISCORD_NAME = "CaseScript"
local DISCORD_IMAGE = ""

local MoneyWin1 = Config.MoneyWin1
local MoneyWin2 = Config.MoneyWin2
local MoneyWin3 = Config.MoneyWin3

local BlackMoneyWin1 = Config.BlackMoney1
local BlackMoneyWin2 = Config.BlackMoney2
local BlackMoneyWin3 = Config.BlackMoney3

local WeaponWin1 = Config.WeaponWin1
local WeaponWin2 = Config.WeaponWin2
local WeaponWin3 = Config.WeaponWin3

local ExtraItem1 = Config.ExtraItem1
local ExtraItem2 = Config.ExtraItem2
local ExtraItem3 = Config.ExtraItem3

local ExtraItem1Amount = Config.ExtraItem1Amount
local ExtraItem2Amount = Config.ExtraItem2Amount
local ExtraItem3Amount = Config.ExtraItem3Amount

LoadResourceFile("casescript", "utils.lua")

ESX.RegisterUsableItem('case', function (source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
            identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer.getInventoryItem("case").count >= 1 then
    TriggerClientEvent('caseOpen', source)
    sendToDiscord("Case genutzt : ", "**" .. GetPlayerName(source) .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
    end
end)

RegisterNetEvent("caseMoneyWin1")
AddEventHandler("caseMoneyWin1", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
            identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    xPlayer.addMoney(MoneyWin1)
    sendToDiscord(GetPlayerName(source), "**" .. "hat "..MoneyWin1.. "$ Gewonnen" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)

RegisterNetEvent("caseMoneyWin2")
AddEventHandler("caseMoneyWin2", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
            identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    xPlayer.addMoney(MoneyWin2)
    sendToDiscord(GetPlayerName(source), "**" .. "hat "..MoneyWin2.. "$ Gewonnen" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222) 
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)

RegisterNetEvent("caseMoneyWin3")
AddEventHandler("caseMoneyWin3", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
            identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    xPlayer.addMoney(MoneyWin3)
    sendToDiscord(GetPlayerName(source), "**" .. "hat "..MoneyWin3.. "$ Gewonnen" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)

RegisterNetEvent("caseBlackMoneyWin1")
AddEventHandler("caseBlackMoneyWin1", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
            identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    xPlayer.addAccountMoney('black_money', BlackMoneyWin1)
     sendToDiscord(GetPlayerName(source), "**" .. "hat "..BlackMoneyWin1.."$ Schwarzgeld Gewonnen" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)

RegisterNetEvent("caseBlackMoneyWin2")
AddEventHandler("caseBlackMoneyWin2", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
            identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    xPlayer.addAccountMoney('black_money', BlackMoneyWin2)
    sendToDiscord(GetPlayerName(source), "**" .. "hat "..BlackMoneyWin2.."$ Schwarzgeld Gewonnen" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)

RegisterNetEvent("caseBlackMoneyWin3")
AddEventHandler("caseBlackMoneyWin3", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
            identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    xPlayer.addAccountMoney('black_money', BlackMoneyWin3)
     sendToDiscord(GetPlayerName(source), "**" .. "hat "..BlackMoneyWin3.."$ Schwarzgeld Gewonnen" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)

RegisterNetEvent("caseWeaponWin1")
AddEventHandler("caseWeaponWin1", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
            identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    xPlayer.addWeapon(WeaponWin1, 50)
     sendToDiscord(GetPlayerName(source), "**" .. "hat " .. WeaponWin1 .. " gewonnen!" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)

RegisterNetEvent("caseWeaponWin2")
AddEventHandler("caseWeaponWin2", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
            identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    xPlayer.addWeapon(WeaponWin2, 50)
     sendToDiscord(GetPlayerName(source), "**" .. "hat " .. WeaponWin2 .. " gewonnen!" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)

RegisterNetEvent("caseWeaponWin3")
AddEventHandler("caseWeaponWin3", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
            identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    xPlayer.addWeapon(WeaponWin3, 50)
     sendToDiscord(GetPlayerName(source), "**" .. "hat " .. WeaponWin3 .. " gewonnen!" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)

RegisterNetEvent("caseItemWin1")
AddEventHandler("caseItemWin1", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
            identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    xPlayer.addInventoryItem(ExtraItem1, ExtraItem1Amount)
     sendToDiscord(GetPlayerName(source), "**" .. "hat " .. ExtraItem1Amount .. " " .. ExtraItem1 .. " gewonnen!" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)

RegisterNetEvent("caseItemWin2")
AddEventHandler("caseItemWin2", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
            identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    xPlayer.addInventoryItem(ExtraItem2 , ExtraItem2Amount)
     sendToDiscord(GetPlayerName(source), "**" .. "hat " .. ExtraItem2Amount .. " " .. ExtraItem2 .. " gewonnen!" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)

RegisterNetEvent("caseItemWin3")
AddEventHandler("caseItemWin3", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
            identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    xPlayer.addInventoryItem(ExtraItem3, ExtraItem3Amount)
    sendToDiscord(GetPlayerName(source), "**" .. "hat " .. ExtraItem3Amount .. " " .. ExtraItem3 .. " gewonnen!" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)

local importPlate
RegisterNetEvent("caseImportWin1")
AddEventHandler("caseImportWin1", function(importPlate)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
            identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (@owner, @plate, @vehicle)', {
        ['@owner']   = xPlayer.identifier,
        ['@plate']   = importPlate,
        ['@vehicle'] = '{"plate":"'..importPlate..'", "model":2047166283}' --VEHICLE HASH
    }, function(rowsChanged)
    end)
    sendToDiscord(GetPlayerName(source), "**" .. "hat eine BMW S1000R gewonnen!" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)

RegisterNetEvent("caseImportWin2")
AddEventHandler("caseImportWin2", function(importPlate)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
                identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (@owner, @plate, @vehicle)', {
        ['@owner']   = xPlayer.identifier,
        ['@plate']   = importPlate,
        ['@vehicle'] = '{"plate":"'..importPlate..'", "model":-1752116803}' --VEHICLE HASH
    }, function(rowsChanged)
    end)
    sendToDiscord(GetPlayerName(source), "**" .. "hat ein Nissan GTR gewonnen!" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)

RegisterNetEvent("caseImportWin3")
AddEventHandler("caseImportWin3", function(importPlate)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
                identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (@owner, @plate, @vehicle)', {
        ['@owner']   = xPlayer.identifier,
        ['@plate']   = importPlate,
        ['@vehicle'] = '{"plate":"'..importPlate..'", "model":-1215316954}' --VEHICLE HASH
    }, function(rowsChanged)
    end)
    sendToDiscord(GetPlayerName(source), "**" .. "hat ein C63 AMG gewonnen!" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)

RegisterNetEvent("caseImportWin4")
AddEventHandler("caseImportWin4", function(importPlate)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
                identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle, type) VALUES (@owner, @plate, @vehicle, @type)', {
        ['@owner']   = xPlayer.identifier,
        ['@plate']   = importPlate,
        ['@vehicle'] = '{"plate":"'..importPlate..'", "model":-861217386}', --VEHICLE HASH
        ['@type']   = "boat",
    }, function(rowsChanged)
    end)
    sendToDiscord(GetPlayerName(source), "**" .. "hat eine SUPER YACHT gewonnen!" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)

RegisterNetEvent("caseRESPIN")
AddEventHandler("caseRESPIN", function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local identifiers = {
        license = ""
        }
        for i = 0, GetNumPlayerIdentifiers(source) - 1 do
            local id = GetPlayerIdentifier(source, i)
            if string.find(id, "license") then
            id = string.gsub(id, "license2", "")
            id = string.gsub(id, ":", "")
            id = string.gsub(id, " ", "")
                identifiers.license = id
            end
        end
    local rockstarlicense = identifiers.license
    if xPlayer ~= nil then
    if xPlayer.getInventoryItem("case").count >= 1 then
    xPlayer.removeInventoryItem('case', 1)
    xPlayer.addInventoryItem("case", 1)
    sendToDiscord(GetPlayerName(source), "**" .. "hat ein ReSpin gewonnen!" .. "**", 222)
else
    sendToDiscord("Cheater/Duper gefunden : ", "**" .. GetPlayerName(source) .. "**", 222)
    Wait(50)
    sendToDiscord("Cheater/Duper License : ", "**" .. rockstarlicense .. "**", 222)
        end
    end
end)



































--PASTED DISCORD WEBHOOK SHIT

function GetIDFromSource(Type, ID) 
    local IDs = GetPlayerIdentifiers(ID)
    for k, CurrentID in pairs(IDs) do
        local ID = stringsplit(CurrentID, ':')
        if (ID[1]:lower() == string.lower(Type)) then
            return ID[2]:lower()
        end
    end
    return nil
end

function stringsplit(input, seperator)
	if seperator == nil then
		seperator = '%s'
	end
	
	local t={} ; i=1
	
	for str in string.gmatch(input, '([^'..seperator..']+)') do
		t[i] = str
		i = i + 1
	end
	
	return t
end

function sendToDiscord(name, message, color)
    local connect = {
          {
              ["color"] = color,
              ["title"] = "**".. name .."**",
              ["description"] = message,
              ["footer"] = {
                  ["text"] = "by PIMP_CLS#7979 & Movas#6969", 
              },
          }
      }
    PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = connect, avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
end