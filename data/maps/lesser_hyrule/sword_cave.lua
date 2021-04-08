-- Lua script of map lesser_hyrule/sword_cave.
-- This script is executed every time the hero enters this map.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation:
-- http://www.solarus-games.org/doc/latest

local map = ...
local game = map:get_game()

-- Event called at initialization time, as soon as this map is loaded.
function map:on_started()

  -- You can initialize the movement and sprites of various
  -- map entities here.
end

-- Event called after the opening transition effect of the map,
-- that is, when the player takes control of the hero.
function map:on_opening_transition_finished()

  function sensor:on_activated()
    game:start_dialog("sword_old_man.take_this")
    sensor:set_enabled(false)
  end

  if game:has_ability("sword") then
    Impa:set_enabled(true)
  end

  function Impa:on_interaction()
    game:start_dialog("")
  end
end
