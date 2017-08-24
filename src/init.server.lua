--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_playerSpawn
--

-- Event is emited after resource is loded
AddEventHandler('onServerResourceStart', function (resource)
  if resource == "ft_playerSpawn" then

    Settings.respawn = GetConvar("ft_respawn", Settings.respawn) == "true" and true or false

    -- Send event
    TriggerEvent('ft_playerSpawn:onResourceReady')

  end
end)
