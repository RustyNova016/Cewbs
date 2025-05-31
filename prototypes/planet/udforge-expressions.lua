data:extend({
  -- Constants
  {
    type = "noise-expression",
    name = "cewbs_diff_range",
    expression = "5"
  },

  {
    type = "noise-expression",
    name = "cewbs_voronoid_groups",
    expression = "3"
  },

  -- ==== Functions ====

  {
    type = "noise-function",
    name = "cewbs_cells_groups",
    parameters = { "func_x", "func_y", "grid", "groups" },
    expression = "floor(voronoi_cell_id{x = func_x,\z
                                  y = func_y,\z
                                  seed0 = map_seed,\z
                                  seed1 = 'cewb_cells',\z
                                  grid_size = grid,\z
                                  distance_type = 'manhattan',\z
                                  jitter = 1} * groups) / groups"
  },

  -- ==== Expressions ===

  {
    type = "noise-expression",
    name = "udforge_start_area_ground",
    expression = "(abs(x) <= 50 & abs(y) <= 50) | (abs(x) >= 25 & abs(x) <= 75 & abs(y) >= 25 & abs(y) <= 75)"
  },


  {
    type = "noise-expression",
    name = "udforge_start_area_moat",
    expression = "(abs(x) <= 100 & abs(y) <= 100)"
  },

  {
    type = "noise-expression",
    name = "udforge_start_area_coreflux",
    expression = "udforge_start_area_ground == 0 & udforge_start_area_moat"
  },



  -- Big channels

  -- The facets for the big coreflux channels
  {
    type = "noise-expression",
    name = "udforge_big_channels_facets",
    expression = "voronoi_facet_noise{x = x,\z
                                  y = y,\z
                                  seed0 = map_seed,\z
                                  seed1 = 'cewbs_big_channel',\z
                                  grid_size = 200,\z
                                  distance_type = 'manhattan',\z
                                  jitter = 1}"
  },


  -- The mask of the big channels
  {
    type = "noise-expression",
    name = "udforge_big_channels_mask",
    expression = "udforge_big_channels_facets < 0.075"
  },



  -- ==== Small Channels ===
  --- Smaller channels with broken off groupings

  -- {
  --     type = "noise-expression",
  --     name = "udforge_small_channels_groupings",
  --     expression = "cewbs_cells_groups(x, y, 25, 4)"
  -- },

  {
    type = "noise-expression",
    name = "udforge_small_channels_facet",
    expression = "voronoi_facet_noise{x = x,\z
                                  y = y,\z
                                  seed0 = map_seed,\z
                                  seed1 = 'cewbs_big_channel',\z
                                  grid_size = 75,\z
                                  distance_type = 'manhattan',\z
                                  jitter = 1}"
  },


  --- Hides the small channels in the inner parts of the big channels to leave so builing space
  {
    type = "noise-expression",
    name = "udforge_small_channels_hidden",
    expression = "if(udforge_big_channels_facets > 0.6, 0, udforge_small_channels_facet < 0.075)"
  },


  {
    type = "noise-expression",
    name = "udforge_channels",
    expression = "udforge_small_channels_hidden | udforge_big_channels_mask"
  },


  -- ==== Recovery Circles ====

  {
    type = "noise-expression",
    name = "udforge_recovery_spots",
    expression = "spot_noise{ x = x,\z
                              y = y,\z
                              seed0 = map_seed,\z
                              seed1 = 1,\z
                              candidate_spot_count = 80,\z
                              suggested_minimum_candidate_point_spacing = 512,\z
                              skip_span = 1,\z
                              skip_offset = 0,\z
                              region_size = 8092,\z
                              density_expression = 80,\z
                              spot_quantity_expression = 8092*2,\z
                              spot_radius_expression = 200,\z
                              hard_region_target_quantity = 0,\z
                              spot_favorability_expression = 60,\z
                              basement_value = -0.5,\z
                              maximum_spot_basement_radius = 128}",
  },

  {
    type = "noise-expression",
    name = "udforge_core_flux_no_start",
    expression = "if(udforge_recovery_spots > 0, if(udforge_recovery_spots > 0.25, 0, 1),  udforge_channels)"
  },

  {
    type = "noise-expression",
    name = "udforge_core_flux",
    expression = "if(udforge_start_area_moat != 0, udforge_start_area_coreflux,  udforge_core_flux_no_start)"
  },


  -- ==== Ressources ====

  {
    type = "noise-expression",
    name = "udforge_hivemind_gas",
    expression = "spot_noise{ x = x,\z
                              y = y,\z
                              seed0 = map_seed,\z
                              seed1 = 2,\z
                              candidate_spot_count = 80,\z
                              suggested_minimum_candidate_point_spacing = 512,\z
                              skip_span = 1,\z
                              skip_offset = 0,\z
                              region_size = 8092,\z
                              density_expression = 80,\z
                              spot_quantity_expression = 8092,\z
                              spot_radius_expression = 5,\z
                              hard_region_target_quantity = 0,\z
                              spot_favorability_expression = 60,\z
                              basement_value = -0.5,\z
                              maximum_spot_basement_radius = 128}",
  },


  -- {
  --     type = "noise-expression",
  --     name = "cewbs_cells_groupings",
  --     parameters = { "func_x", "func_y" },
  --     expression = "cewbs_cells_groups(x, y)"
  -- },



  -- {
  --     type = "noise-expression",
  --     name = "cewbs_small_channels",
  --     expression = "(voronoi_facet_noise{x = x,\z
  --                                 y = y,\z
  --                                 seed0 = map_seed,\z
  --                                 seed1 = 'cewbs_small_channel',\z
  --                                 grid_size = 25,\z
  --                                 distance_type = 'manhattan',\z
  --                                 jitter = 1} < 0.2) * cewbs_small_channels_noise"
  -- },

  -- {
  --     type = "noise-expression",
  --     name = "cewbs_small_channels_noise",
  --     expression =
  --     "multioctave_noise{x = x, y = y, persistence = 0.75, seed0 = map_seed, seed1 = 0, octaves = 4, input_scale = 1/3, output_scale = 10}"
  -- },

  -- {
  --     type = "noise-expression",
  --     name = "cewbs_big_channels",
  --     expression = "voronoi_facet_noise{x = x,\z
  --                                 y = y,\z
  --                                 seed0 = map_seed,\z
  --                                 seed1 = 'cewbs_big_channel',\z
  --                                 grid_size = 200,\z
  --                                 distance_type = 'manhattan',\z
  --                                 jitter = 1} < 0.1"
  -- },

  -- {
  --     type = "noise-expression",
  --     name = "cewbs_cell_id_diff",
  --     expression =
  --     " abs((cewbs_cells_groups(x, y) - cewbs_cells_groups(x - cewbs_diff_range, y - cewbs_diff_range)))\z
  --     + abs((cewbs_cells_groups(x, y) - cewbs_cells_groups(x + cewbs_diff_range, y + cewbs_diff_range)))\z
  --     + abs((cewbs_cells_groups(x, y) - cewbs_cells_groups(x - cewbs_diff_range, y + cewbs_diff_range)))\z
  --     + abs((cewbs_cells_groups(x, y) - cewbs_cells_groups(x + cewbs_diff_range, y - cewbs_diff_range)))"
  -- },

  -- {
  --     type = "noise-expression",
  --     name = "cewbs_spots",
  --     expression = "spot_noise{ x = x,\z
  --                             y = y,\z
  --                             seed0 = map_seed,\z
  --                             seed1 = 1,\z
  --                             candidate_spot_count = 80,\z
  --                             suggested_minimum_candidate_point_spacing = 512,\z
  --                             skip_span = 1,\z
  --                             skip_offset = 0,\z
  --                             region_size = 8092,\z
  --                             density_expression = 80,\z
  --                             spot_quantity_expression = 8092*2,\z
  --                             spot_radius_expression = 64,\z
  --                             hard_region_target_quantity = 0,\z
  --                             spot_favorability_expression = 60,\z
  --                             basement_value = -0.5,\z
  --                             maximum_spot_basement_radius = 128}",
  -- },



  -- {
  --     type = "noise-expression",
  --     name = "cewbs_channels",
  --     --expression = "if(cewbs_spots > 0, if(cewbs_spots > 1, 0, 1), (cewbs_cell_id_diff != 0) & (cewbs_facet < 0.2))"
  --     expression = "if(cewbs_spots > 0, if(cewbs_spots > 1, 0, 1),  cewbs_big_channels + cewbs_small_channels)"
  -- },
})
