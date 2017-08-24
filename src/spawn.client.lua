--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_playerSpawn
--

AddEventHandler('ft_players:playerReadyToJoin', function ()

  if (Settings.autoSpawn) then
    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn()
  end

  if (Settings.lastPos) then
    local player = GetPlayer()

    exports.spawnmanager:spawnPlayer({
      x = player.posX or 0.0,
      y = player.posY or 0.0,
      z = player.posZ or 0.0,
      heading = player.heading or 0.0,
    })
  else
    exports.spawnmanager:spawnPlayer()
  end

end)
