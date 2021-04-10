-- Lua script of map Start.
-- This script is executed every time the hero enters this map.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation:
-- http://www.solarus-games.org/doc/latest

local map = ...
local game = map:get_game()

-- Event called at initialization time, as soon as this map is loaded.
function map:on_started()

  if game:has_ability("sword") then
    Impa:set_enabled(false)
  end

  -- You can initialize the movement and sprites of various
  -- map entities here.
end

-- Event called after the opening transition effect of the map,
-- that is, when the player takes control of the hero.
function map:on_opening_transition_finished()

  function Impa:on_interaction()
    game:start_dialog("Impa.help", function()
      hero:start_treasure("equipment/shield")
    end)
  end

end
