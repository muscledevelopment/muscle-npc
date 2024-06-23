function AddNPC(model, coords, heading)
    local npcModel = GetHashKey(model)


    RequestModel(npcModel)
    while not HasModelLoaded(npcModel) do
        Wait(1)
    end

    local npcPed = CreatePed(1, npcModel, coords.x, coords.y, coords.z - 1.0, heading, false, true)
    FreezeEntityPosition(npcPed, true)
end

Citizen.CreateThread(function()
    local npcModel1 = "a_m_y_business_01"
    local npcCoords1 = vector3(2951.31, 2735.65, 44.56)
    local npcHeading1 = 279.95 


    AddNPC(npcModel1, npcCoords1, npcHeading1)

    local npcModel2 = "a_m_y_business_01"
    local npcCoords2 = vector3(2939.47, 2775.59, 39.25) 
    local npcHeading2 = 310.05 

    AddNPC(npcModel2, npcCoords2, npcHeading2)

end)
