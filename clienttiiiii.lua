kartta = false
--ESX = nil

Citizen.CreateThread(function()
    while true do
        while not kartta do
            if IsControlJustPressed(1, 56) then --F9
                kartta = true
                --TriggerEvent('esx_status:setDisplay', 0.0)
            end
            Citizen.Wait(5)
        end
        while kartta do
            DisplayRadar(false)
            if IsControlJustPressed(1, 56) then --F9
                kartta = false
                DisplayRadar(true)
                --TriggerEvent('esx_status:setDisplay', 1.0)
            end
            Citizen.Wait(5)
        end
    end
end)
-- BY CLOUDIS
