local planet_map_gen = require("__space-age__/prototypes/planet/planet-map-gen")

planet_map_gen.udforge = function()
  return
  {
    property_expression_names =
    {
      elevation = "0",
      temperature = "0",
      moisture = "0",
      aux = "0",
      cliffiness = "0",
      cliff_elevation = "0",
    },
    cliff_settings =
    {
      name = "cliff-cubium",
      cliff_elevation_interval = 120,
      cliff_elevation_0 = 70,
    },

    autoplace_controls =
    {
    },
    autoplace_settings =
    {
      ["tile"] = --TODO, make lowland tile prototype....
      {
        settings =
        {
          --nauvis tiles
          --["volcanic-soil-dark"] = {},
          --["volcanic-soil-light"] = {},
          --["volcanic-ash-soil"] = {},
          --end of nauvis tiles
          ["udf-core-flux"] = {},
          ["udf-ground"] = {},
          -- ["cubium-volcanic-ash-dark"] = {},
          -- ["cubium-volcanic-cracks"] = {},
          -- ["cubium-volcanic-cracks-warm"] = {},
          -- ["cubium-folds"] = {},
          -- ["cubium-volcanic-folds-flat"] = {},
          -- ["cubium-lava"] = {},
          -- ["cubium-lava-hot"] = {},
          -- ["cubium-folds-warm"] = {},
          -- ["cubium-volcanic-pumice-stones"] = {},
          -- ["cubium-volcanic-cracks-hot"] = {},
          -- ["cubium-volcanic-jagged-ground"] = {},
          -- ["cubium-volcanic-smooth-stone"] = {},
          -- ["cubium-smooth-stone-warm"] = {},
          -- ["cubium-ash-cracks"] = {},
        }
      },
      ["decorative"] =
      {
        settings =
        {
          -- nauvis decoratives
          --["v-brown-carpet-grass"] = {},
          --["v-green-hairy-grass"] = {},
          --["v-brown-hairy-grass"] = {},
          --["v-red-pita"] = {},
          -- end of nauvis
          --["cubium-rock-decal-large"] = {}, --TODO define these decoratives
          --["cubium-crack-decal-large"] = {},
          --["cubium-crack-decal-huge-warm"] = {},
          --["cubium-dune-decal"] = {},
          --["cubium-sand-decal"] = {},
          --["cubium-lava-fire"] = {},
          -- ["sulfur-stain"] = {},
          -- ["sulfur-stain-small"] = {},
          -- ["sulfuric-acid-puddle"] = {},
          -- ["sulfuric-acid-puddle-small"] = {},
          -- ["crater-small"] = {},
          -- ["crater-large"] = {},
          -- ["pumice-relief-decal"] = {},
          -- ["small-volcanic-rock"] = {},
          -- ["medium-volcanic-rock"] = {},
          -- ["tiny-volcanic-rock"] = {},
          -- ["tiny-rock-cluster"] = {},
          -- ["small-sulfur-rock"] = {},
          -- ["tiny-sulfur-rock"] = {},
          -- ["sulfur-rock-cluster"] = {},
          -- ["waves-decal"] = {},
        }
      },
      ["entity"] =
      {
        settings =
        {
          --["hivemind-gas-vent"] = {},
          -- ["coal"] = {},
          -- ["sulfuric-acid-geyser"] = {},
          -- --["huge-volcanic-rock"] = {}, --todo define my own
          -- --["big-volcanic-rock"] = {},
          -- ["crater-cliff"] = {},
          -- ["vulcanus-chimney"] = {}, --Might have to make my own, but I'll leave it for now.
          -- ["vulcanus-chimney-faded"] = {},
          -- ["vulcanus-chimney-cold"] = {},
          -- ["vulcanus-chimney-short"] = {},
          -- ["vulcanus-chimney-truncated"] = {},
          -- ["ashland-lichen-tree"] = {},
          -- ["ashland-lichen-tree-flaming"] = {},
        }
      }
    }
  }
end

return planet_map_gen
