--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_playerSpawn
--

local fistSpawn = false

AddEventHandler("playerSpawned", function()
  Citizen.CreateThread(function()

    if fistSpawn == false then

      fistSpawn = true

      -- Send fistSpawn event
      TriggerServerEvent("ft_playerSpawn:fistSpawn")
      TriggerEvent("ft_playerSpawn:fistSpawn")

    end

  end)
end)
