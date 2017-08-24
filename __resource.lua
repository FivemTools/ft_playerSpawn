--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_playerSpawn
--

dependencies {
  "spawnmanager",
  "ft_players",
}

client_scripts {
  -- Requirement
  "@ft_players/client.wrappers.lua",

  "src/settings.client.lua",
  "src/spawn.client.lua",
  "src/fistSpawn.client.lua",
  "src/init.client.lua",
}

server_scripts {
  -- Requirement
  "@ft_players/client.wrappers.lua",

  "src/settings.server.lua",
  "src/spawn.server.lua",
  "src/fistSpawn.client.lua",
  "src/init.server.lua",
}

exports {

}

server_exports {

}
