-- Lua script of item prize_packs/pack1.
-- This script is executed only once for the whole game.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation for the full specification
-- of types, events and methods:
-- http://www.solarus-games.org/doc/latest

local item = ...
local game = item:get_game()

local packs = {
  [1] = {
    {"heart", 1},
    {"heart", 1},
    {"heart", 1},
    {"heart", 1},
    {"rupee", 1},
    {"heart", 1},
    {"heart", 1},
    {"rupee", 1},
  },

  [2] = {
    {"rupee", 2},
    {"rupee", 1},
    {"rupee", 2},
    {"rupee", 3},
    {"rupee", 2},
    {"rupee", 1},
    {"rupee", 2},
    {"rupee", 2},
  },

  [3] = {
    {"magic_jar", 2},
    {"magic_jar", 1},
    {"magic_jar", 1},
    {"rupee", 2},
    {"magic_jar", 2},
    {"magic_jar", 1},
    {"heart", 1},
    {"magic_jar", 1},
  },

  [4] = {
    {"bomb_refill", 1},
    {"bomb_refill", 1},
    {"bomb_refill", 1},
    {"bomb_refill", 3},
    {"bomb_refill", 1},
    {"bomb_refill", 1},
    {"bomb_refill", 5},
    {"bomb_refill", 1},
  },

  [5] = {
    {"arrow_refill", 2},
    {"heart", 1},
    {"arrow_refill", 2},
    {"arrow_refill", 3},
    {"arrow_refill", 2},
    {"heart", 1},
    {"arrow_refill", 2},
    {"arrow_refill", 3},
  },

  [6] = {
    {"magic_jar", 1},
    {"rupee", 1},
    {"heart", 1},
    {"arrow_refill", 2},
    {"magic_jar", 1},
    {"bomb_refill", 1},
    {"rupee", 1},
    {"heart", 1},
  },

  [7] = {
    {"heart", 1},
    {"fairy", 1},
    {"magic_jar", 2},
    {"rupee", 3},
    {"bomb_refill", 5},
    {"heart", 1},
    {"rupee", 3},
    {"arrow_refill", 3},
  },
}

function item:on_pickable_created(pickable)
  local _,variant = pickable:get_treasure() -- pickable:get_treasure returns the item, variant, and savegame variable in that order
  local x,y,layer = pickable:get_position()

  local pack_list = packs[variant]
  local save_key = "pack_index."..variant

  local pack_index = game:get_value(save_key) or 1
  map:create_pickable({
    x=x, y=y, layer=layer,
    treasure_name = pack_list[pack_index][1]
    treasure_variant = pack_list[pack_index][2]} -- Error: Failed to load script 'items/prize_packs': items/prize_packs.lua:104: '}' expected (to close '{' at line 101) near 'treasure_variant'
    -- Have to fix later.
  )

  pack_index = pack_index + 1

  if pack_index>#pack_list then pack_index = 1 end
  game:set_value(save_key, pack_index)

end
