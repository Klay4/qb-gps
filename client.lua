local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    while true do
        Wait(50)
        if LocalPlayer.state.isLoggedIn then
            QBCore.Functions.TriggerCallback('qb-gps:server:GetItem', function(hasItem)
                if hasItem then
                    DisplayRadar(true)
		else
	            DisplayRadar(false)
		end
            end, "gps")
        end
    end
end)
