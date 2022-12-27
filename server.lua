AyseCore = exports["Ayse_Core"]:GetCoreObject()

RegisterNetEvent("Ayse_NoCharacters:GetCharacter", function()
    local player = source
    local characters = AyseCore.Functions.GetPlayerCharacters(player)
    if next(characters) then
        for id, characterData in pairs(characters) do
            AyseCore.Functions.SetActiveCharacter(player, id)
            return
        end
    end
    AyseCore.Functions.CreateCharacter(player, GetPlayerName(player), "", "", "")
    characters = AyseCore.Functions.GetPlayerCharacters(player)
    for id, characterData in pairs(characters) do
        AyseCore.Functions.SetActiveCharacter(player, id)
        break
    end
end)
