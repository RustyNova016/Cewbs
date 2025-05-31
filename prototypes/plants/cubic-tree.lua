data:extend({
    {
        type = "plant",
        name = "cubic-tree",
        icon = "__space-age__/graphics/icons/yumako-tree.png",
        flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
        minable =
        {
            mining_particle = "yumako-mining-particle",
            mining_time = 0.5,
            results = { { type = "item", name = "yumako", amount = 50 } },
            mining_trigger =
            {
                {
                    type = "direct",
                    action_delivery =
                    {
                        {
                            type = "instant",
                            target_effects = leaf_sound_trigger
                        }
                    }
                }
            }
        },
        mining_sound = sound_variations("__space-age__/sound/mining/axe-mining-yumako-tree", 5, 0.6),
        mined_sound = sound_variations("__space-age__/sound/mining/mined-yumako-tree", 6, 0.3),
        growth_ticks = 5 * minutes,
        harvest_emissions = plant_harvest_emissions,
        emissions_per_second = plant_emissions,
        max_health = 50,
        collision_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
        --collision_mask = {layers={player=true, ground_tile=true, train=true}},
        selection_box = { { -1, -3 }, { 1, 0.8 } },
        drawing_box_vertical_extension = 0.8,
        subgroup = "trees",
        order = "a[tree]-c[gleba]-a[seedable]-a[yumako-tree]",
        impact_category = "tree",
        factoriopedia_simulation = simulations.factoriopedia_yumako_tree,
        autoplace =
        {
            control = "gleba_plants",
            order = "a[tree]-b[forest]-a",
            probability_expression = "min(0.2, 0.3 * (1 - gleba_plants_noise) * control:gleba_plants:size)",
            richness_expression = "random_penalty_at(3, 1)",
            tile_restriction = { "natural-yumako-soil", "artificial-yumako-soil", "overgrowth-yumako-soil" }
        },
        variations = gleba_tree_variations("yumako-tree", 8, 4, 1.3, 640, 560, util.by_pixel(52, -73)),
        colors = minor_tints(),
        agricultural_tower_tint =
        {
            primary = { r = 0.552, g = 0.218, b = 0.218, a = 1.000 },   -- #8c3737ff
            secondary = { r = 0.561, g = 0.613, b = 0.308, a = 1.000 }, -- #8f4f4eff
        },
        -- tile_buildability_rules = { {area = {{-0.55, -0.55}, {0.55, 0.55}}, required_tiles = {"natural-yumako-soil", "artificial-yumako-soil"}, remove_on_collision = true} },
        ambient_sounds =
        {
            sound =
            {
                variations = sound_variations("__space-age__/sound/world/plants/yumako-tree", 6, 0.5),
                advanced_volume_control =
                {
                    fades = { fade_in = { curve_type = "cosine", from = { control = 0.5, volume_percentage = 0.0 }, to = { 1.5, 100.0 } } }
                }
            },
            radius = 7.5,
            min_entity_count = 2,
            max_entity_count = 10,
            entity_to_sound_ratio = 0.2,
            average_pause_seconds = 8
        },
        map_color = { 255, 255, 255 },
    },
})
