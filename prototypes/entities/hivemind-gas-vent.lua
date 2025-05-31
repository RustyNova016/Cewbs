data:extend({
    {
        type = "resource",
        name = "hivemind-gas-vent",
        icon = "__space-age__/graphics/icons/fluorine-vent.png",
        flags = { "placeable-neutral" },
        category = "basic-fluid",
        subgroup = "mineable-fluids",
        order = "d",
        infinite = true,
        highlight = true,
        minimum = 20000,
        normal = 100000,
        infinite_depletion_amount = 10,
        resource_patch_search_radius = 16,
        tree_removal_probability = 0.7,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
            mining_time = 1,
            results =
            {
                {
                    type = "fluid",
                    name = "fluorine",
                    amount_min = 1,
                    amount_max = 1,
                    probability = 1
                }
            }
        },
        --walking_sound = base_tile_sounds.walking.oil({}),
        collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        autoplace = {
            --control = "fluorine-vent",
            order = "a[resources]-a[fluorine]",
            --default_enabled = false,
            probability_expression = "udforge_hivemind_gas",
            richness_expression = "udforge_hivemind_gas"
        },
        stage_counts = { 0 },
        stages =
        {
            layers =
            {
                util.sprite_load("__ultradense-forge__/graphics/entity/hivemind-gas-vent/hivemind-gas-vent.png",
                    {
                        priority = "extra-high",
                        frame_count = 1,
                        scale = 0.5
                    })
            }
        },
        draw_stateless_visualisation_under_building = false,
        stateless_visualisation =
        {
            {
                count = 1,
                render_layer = "smoke",
                animation = util.sprite_load("__space-age__/graphics/entity/lithium-brine/smoke-1",
                    {
                        priority = "extra-high",
                        frame_count = 64,
                        animation_speed = 0.35,
                        tint = { r = 0.25, g = 0.5, b = 0.5, a = 1 },
                        scale = 0.75,
                        shift = { 0, -0.23 }
                    })
            },
            {
                count = 1,
                render_layer = "smoke",
                animation = util.sprite_load("__space-age__/graphics/entity/lithium-brine/smoke-2",
                    {
                        priority = "extra-high",
                        frame_count = 64,
                        animation_speed = 0.35,
                        tint = { r = 0, g = 0.9, b = 1, a = 0.35 },
                        scale = 0.75,
                        shift = { 0, -0.23 }
                    })
            },
            {
                count = 1,
                render_layer = "smoke",
                animation = {
                    filename = "__space-age__/graphics/entity/fluorine-vent/fluorine-vent-gas-outer.png",
                    frame_count = 47,
                    line_length = 16,
                    width = 90,
                    height = 188,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-2, 24 - 152),
                    scale = 1.5,
                    tint = util.multiply_color({ r = 0.5, g = 1, b = 1 }, 0.1)
                }
            },
            {
                count = 1,
                render_layer = "smoke",
                animation = {
                    filename = "__space-age__/graphics/entity/fluorine-vent/fluorine-vent-gas-inner.png",
                    frame_count = 47,
                    line_length = 16,
                    width = 40,
                    height = 84,
                    animation_speed = 0.5,
                    shift = util.by_pixel(0, 24 - 78),
                    scale = 1.5,
                    tint = util.multiply_color({ r = 0, g = 0.9, b = 1 }, 0.1)
                }
            }
        },
        map_color = { 0.0, 0.8, 1.0 },
        map_grid = false,
        created_effect = create_tiles("snow-patchy")
    }
})
