-- Lua script of item prize_packs/pack1.
-- This script is executed only once for the whole game.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation for the full specification
-- of types, events and methods:
-- http://www.solarus-games.org/doc/latest

local item = ...
local game = item:get_game()

local pack0 = {
  {"heart", 1},
  {"heart", 1},
  {"heart", 1},
  {"heart", 1},
  {"rupee", 1},
  {"heart", 1},
  {"heart", 1},
  {"rupee", 1},
}

local pack1 = {
  {"rupee", 2},
  {"rupee", 1},
  {"rupee", 2},
  {"rupee", 3},
  {"rupee", 2},
  {"rupee", 1},
  {"rupee", 2},
  {"rupee", 2},
}

local pack2 = {
  {"magic_jar", 2},
  {"magic_jar", 1},
  {"magic_jar", 1},
  {"rupee", 2},
  {"magic_jar", 2},
  {"magic_jar", 1},
  {"heart", 1},
  {"magic_jar", 1},
}

local pack3 = {
  {"bomb_refill", 1},
  {"bomb_refill", 1},
  {"bomb_refill", 1},
  {"bomb_refill", 3},
  {"bomb_refill", 1},
  {"bomb_refill", 1},
  {"bomb_refill", 5},
  {"bomb_refill", 1},
}

local pack4 = {
  {"arrow_refill", 2},
  {"heart", 1},
  {"arrow_refill", 2},
  {"arrow_refill", 3},
  {"arrow_refill", 2},
  {"heart", 1},
  {"arrow_refill", 2},
  {"arrow_refill", 3},
}

local pack5 = {
  {"magic_jar", 1},
  {"rupee", 1},
  {"heart", 1},
  {"arrow_refill", 2},
  {"magic_jar", 1},
  {"bomb_refill", 1},
  {"rupee", 1},
  {"heart", 1},
}

local pack6 = {
  {"heart", 1},
  {"fairy", 1},
  {"magic_jar", 2},
  {"rupee", 3},
  {"bomb_refill", 5},
  {"heart", 1},
  {"rupee", 3},
  {"arrow_refill", 3},
}

-- Event called when all items have been created.
function item:on_started()

  -- Initialize the properties of your item here,
  -- like whether it can be saved, whether it has an amount
  -- and whether it can be assigned.



end

-- Event called when a pickable treasure representing this item
-- is created on the map.
function item:on_pickable_created(pickable)

--  This is a mess. Ready?
  local packs = {0, 1, 2, 3, 4, 5, 6}
  local pack = packs[variant]
  if pack == nil then
    error("Invalid variant '" .. variant .. "' for item 'pack'")
  elseif pack = pack1 or pack2 or pack4 or pack5 or pack6 then
    chance = math.random(0, 1)
     if chance = 1 then
       local x = 1
         map:create_pickable(prize_packs/pack, variant)
       do x = x + 1 end
         if x > 8 then
         x = 1
         end
     end
  else
    local x = 1
    map:create_pickable(pack, 3)
    do x = x + 1 end
      if x > 8 then
      x = 1
      end
  end

  -- You can set a particular movement here if you don't like the default one.
end
